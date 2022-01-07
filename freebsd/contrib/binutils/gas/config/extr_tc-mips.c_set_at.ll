; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_set_at.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_set_at.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }

@imm_expr = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@O_constant = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"sltiu\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"slti\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"t,r,j\00", align 1
@AT = common dso_local global i32 0, align 4
@BFD_RELOC_LO16 = common dso_local global i32 0, align 4
@HAVE_64BIT_GPRS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"sltu\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"slt\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"d,v,t\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @set_at to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_at(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @imm_expr, i32 0, i32 0), align 8
  %6 = load i64, i64* @O_constant, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %23

8:                                                ; preds = %2
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @imm_expr, i32 0, i32 1), align 8
  %10 = icmp sge i32 %9, -32768
  br i1 %10, label %11, label %23

11:                                               ; preds = %8
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @imm_expr, i32 0, i32 1), align 8
  %13 = icmp slt i32 %12, 32768
  br i1 %13, label %14, label %23

14:                                               ; preds = %11
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)
  %19 = load i32, i32* @AT, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @BFD_RELOC_LO16, align 4
  %22 = call i32 @macro_build(%struct.TYPE_4__* @imm_expr, i8* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %19, i32 %20, i32 %21)
  br label %35

23:                                               ; preds = %11, %8, %2
  %24 = load i32, i32* @AT, align 4
  %25 = load i32, i32* @HAVE_64BIT_GPRS, align 4
  %26 = call i32 @load_register(i32 %24, %struct.TYPE_4__* @imm_expr, i32 %25)
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %31 = load i32, i32* @AT, align 4
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @AT, align 4
  %34 = call i32 @macro_build(%struct.TYPE_4__* null, i8* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %31, i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %23, %14
  ret void
}

declare dso_local i32 @macro_build(%struct.TYPE_4__*, i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @load_register(i32, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
