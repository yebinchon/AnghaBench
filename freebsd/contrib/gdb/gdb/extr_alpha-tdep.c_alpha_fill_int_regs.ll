; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_alpha-tdep.c_alpha_fill_int_regs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_alpha-tdep.c_alpha_fill_int_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ALPHA_PC_REGNUM = common dso_local global i32 0, align 4
@ALPHA_UNIQUE_REGNUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @alpha_fill_int_regs(i32 %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %29, %4
  %11 = load i32, i32* %9, align 4
  %12 = icmp slt i32 %11, 31
  br i1 %12, label %13, label %32

13:                                               ; preds = %10
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %28

20:                                               ; preds = %17, %13
  %21 = load i32, i32* %9, align 4
  %22 = load i8*, i8** %6, align 8
  %23 = load i32, i32* %9, align 4
  %24 = mul nsw i32 %23, 8
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %22, i64 %25
  %27 = call i32 @regcache_collect(i32 %21, i8* %26)
  br label %28

28:                                               ; preds = %20, %17
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %9, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %9, align 4
  br label %10

32:                                               ; preds = %10
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @ALPHA_PC_REGNUM, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* %5, align 4
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %43

39:                                               ; preds = %36, %32
  %40 = load i32, i32* @ALPHA_PC_REGNUM, align 4
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 @regcache_collect(i32 %40, i8* %41)
  br label %43

43:                                               ; preds = %39, %36
  %44 = load i8*, i8** %8, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %57

46:                                               ; preds = %43
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @ALPHA_UNIQUE_REGNUM, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %53, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* %5, align 4
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %57

53:                                               ; preds = %50, %46
  %54 = load i32, i32* @ALPHA_UNIQUE_REGNUM, align 4
  %55 = load i8*, i8** %8, align 8
  %56 = call i32 @regcache_collect(i32 %54, i8* %55)
  br label %57

57:                                               ; preds = %53, %50, %43
  ret void
}

declare dso_local i32 @regcache_collect(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
