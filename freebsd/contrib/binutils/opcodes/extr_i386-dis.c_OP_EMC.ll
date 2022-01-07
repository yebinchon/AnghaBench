; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_i386-dis.c_OP_EMC.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_i386-dis.c_OP_EMC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@modrm = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@intel_syntax = common dso_local global i64 0, align 8
@v_mode = common dso_local global i32 0, align 4
@prefixes = common dso_local global i32 0, align 4
@PREFIX_DATA = common dso_local global i32 0, align 4
@x_mode = common dso_local global i32 0, align 4
@q_mode = common dso_local global i32 0, align 4
@used_prefixes = common dso_local global i32 0, align 4
@MODRM_CHECK = common dso_local global i32 0, align 4
@codep = common dso_local global i32 0, align 4
@scratchbuf = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"%%mm%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @OP_EMC to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @OP_EMC(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modrm, i32 0, i32 0), align 4
  %6 = icmp ne i32 %5, 3
  br i1 %6, label %7, label %34

7:                                                ; preds = %2
  %8 = load i64, i64* @intel_syntax, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %30

10:                                               ; preds = %7
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @v_mode, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %30

14:                                               ; preds = %10
  %15 = load i32, i32* @prefixes, align 4
  %16 = load i32, i32* @PREFIX_DATA, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* @x_mode, align 4
  br label %23

21:                                               ; preds = %14
  %22 = load i32, i32* @q_mode, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* @prefixes, align 4
  %26 = load i32, i32* @PREFIX_DATA, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* @used_prefixes, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* @used_prefixes, align 4
  br label %30

30:                                               ; preds = %23, %10, %7
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @OP_E(i32 %31, i32 %32)
  br label %50

34:                                               ; preds = %2
  %35 = load i32, i32* @MODRM_CHECK, align 4
  %36 = load i32, i32* @codep, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* @codep, align 4
  %38 = load i32, i32* @prefixes, align 4
  %39 = load i32, i32* @PREFIX_DATA, align 4
  %40 = and i32 %38, %39
  %41 = load i32, i32* @used_prefixes, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* @used_prefixes, align 4
  %43 = load i32*, i32** @scratchbuf, align 8
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modrm, i32 0, i32 1), align 4
  %45 = call i32 @sprintf(i32* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32*, i32** @scratchbuf, align 8
  %47 = load i64, i64* @intel_syntax, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = call i32 @oappend(i32* %48)
  br label %50

50:                                               ; preds = %34, %30
  ret void
}

declare dso_local i32 @OP_E(i32, i32) #1

declare dso_local i32 @sprintf(i32*, i8*, i32) #1

declare dso_local i32 @oappend(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
