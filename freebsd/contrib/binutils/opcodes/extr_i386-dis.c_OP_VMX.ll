; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_i386-dis.c_OP_VMX.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_i386-dis.c_OP_VMX.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@modrm = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@obuf = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"rdrand\00", align 1
@v_mode = common dso_local global i32 0, align 4
@prefixes = common dso_local global i32 0, align 4
@PREFIX_DATA = common dso_local global i32 0, align 4
@PREFIX_REPZ = common dso_local global i32 0, align 4
@used_prefixes = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"vmclear\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"vmxon\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"vmptrld\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @OP_VMX to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @OP_VMX(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modrm, i32 0, i32 0), align 4
  %6 = icmp eq i32 %5, 3
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = load i32, i32* @obuf, align 4
  %9 = call i32 @strcpy(i32 %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @v_mode, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @OP_E(i32 %10, i32 %11)
  br label %44

13:                                               ; preds = %2
  %14 = load i32, i32* @prefixes, align 4
  %15 = load i32, i32* @PREFIX_DATA, align 4
  %16 = load i32, i32* @PREFIX_REPZ, align 4
  %17 = or i32 %15, %16
  %18 = and i32 %14, %17
  %19 = load i32, i32* @used_prefixes, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* @used_prefixes, align 4
  %21 = load i32, i32* @prefixes, align 4
  %22 = load i32, i32* @PREFIX_DATA, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %13
  %26 = load i32, i32* @obuf, align 4
  %27 = call i32 @strcpy(i32 %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %40

28:                                               ; preds = %13
  %29 = load i32, i32* @prefixes, align 4
  %30 = load i32, i32* @PREFIX_REPZ, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* @obuf, align 4
  %35 = call i32 @strcpy(i32 %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %39

36:                                               ; preds = %28
  %37 = load i32, i32* @obuf, align 4
  %38 = call i32 @strcpy(i32 %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %39

39:                                               ; preds = %36, %33
  br label %40

40:                                               ; preds = %39, %25
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @OP_E(i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %40, %7
  ret void
}

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @OP_E(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
