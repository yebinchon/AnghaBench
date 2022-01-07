; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_compat.c_CompatInterrupt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_compat.c_CompatInterrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@curTarg = common dso_local global i32* null, align 8
@SIGINT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c".INTERRUPT\00", align 1
@TARG_NOCREATE = common dso_local global i32 0, align 4
@SIGQUIT = common dso_local global i32 0, align 4
@compatSigno = common dso_local global i32 0, align 4
@compatChild = common dso_local global i64 0, align 8
@SIG_DFL = common dso_local global i32 0, align 4
@myPid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @CompatInterrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CompatInterrupt(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32*, i32** @curTarg, align 8
  %5 = call i32 @CompatDeleteTarget(i32* %4)
  %6 = load i32*, i32** @curTarg, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %27

8:                                                ; preds = %1
  %9 = load i32*, i32** @curTarg, align 8
  %10 = call i32 @Targ_Precious(i32* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %27, label %12

12:                                               ; preds = %8
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @SIGINT, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %12
  %17 = load i32, i32* @TARG_NOCREATE, align 4
  %18 = call i32* @Targ_FindNode(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %17)
  store i32* %18, i32** %3, align 8
  %19 = load i32*, i32** %3, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load i32*, i32** %3, align 8
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @Compat_Make(i32* %22, i32* %23)
  br label %25

25:                                               ; preds = %21, %16
  br label %26

26:                                               ; preds = %25, %12
  br label %27

27:                                               ; preds = %26, %8, %1
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* @SIGQUIT, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* %2, align 4
  %33 = call i32 @_exit(i32 %32) #3
  unreachable

34:                                               ; preds = %27
  %35 = load i32, i32* %2, align 4
  store i32 %35, i32* @compatSigno, align 4
  %36 = load i64, i64* @compatChild, align 8
  %37 = icmp sgt i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i64, i64* @compatChild, align 8
  %40 = load i32, i32* %2, align 4
  %41 = call i32 @KILLPG(i64 %39, i32 %40)
  br label %49

42:                                               ; preds = %34
  %43 = load i32, i32* %2, align 4
  %44 = load i32, i32* @SIG_DFL, align 4
  %45 = call i32 @bmake_signal(i32 %43, i32 %44)
  %46 = load i32, i32* @myPid, align 4
  %47 = load i32, i32* %2, align 4
  %48 = call i32 @kill(i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %42, %38
  ret void
}

declare dso_local i32 @CompatDeleteTarget(i32*) #1

declare dso_local i32 @Targ_Precious(i32*) #1

declare dso_local i32* @Targ_FindNode(i8*, i32) #1

declare dso_local i32 @Compat_Make(i32*, i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

declare dso_local i32 @KILLPG(i64, i32) #1

declare dso_local i32 @bmake_signal(i32, i32) #1

declare dso_local i32 @kill(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
