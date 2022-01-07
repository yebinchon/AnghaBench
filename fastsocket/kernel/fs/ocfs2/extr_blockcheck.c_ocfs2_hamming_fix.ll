; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_blockcheck.c_ocfs2_hamming_fix.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_blockcheck.c_ocfs2_hamming_fix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocfs2_hamming_fix(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @hweight32(i32 %16)
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  br label %72

20:                                               ; preds = %4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add i32 %22, %23
  %25 = call i32 @calc_code_bit(i32 %24, i32* null)
  %26 = icmp uge i32 %21, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %72

28:                                               ; preds = %20
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @calc_code_bit(i32 %29, i32* null)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %72

35:                                               ; preds = %28
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %67, %35
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %40, label %72

40:                                               ; preds = %36
  br label %41

41:                                               ; preds = %45, %40
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @hweight32(i32 %42)
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32, i32* %10, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %10, align 4
  br label %41

48:                                               ; preds = %41
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %66

52:                                               ; preds = %48
  %53 = load i32, i32* %9, align 4
  %54 = load i8*, i8** %5, align 8
  %55 = call i64 @ocfs2_test_bit(i32 %53, i8* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load i32, i32* %9, align 4
  %59 = load i8*, i8** %5, align 8
  %60 = call i32 @ocfs2_clear_bit(i32 %58, i8* %59)
  br label %65

61:                                               ; preds = %52
  %62 = load i32, i32* %9, align 4
  %63 = load i8*, i8** %5, align 8
  %64 = call i32 @ocfs2_set_bit(i32 %62, i8* %63)
  br label %65

65:                                               ; preds = %61, %57
  br label %72

66:                                               ; preds = %48
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %9, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %10, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %10, align 4
  br label %36

72:                                               ; preds = %19, %27, %34, %65, %36
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @hweight32(i32) #1

declare dso_local i32 @calc_code_bit(i32, i32*) #1

declare dso_local i64 @ocfs2_test_bit(i32, i8*) #1

declare dso_local i32 @ocfs2_clear_bit(i32, i8*) #1

declare dso_local i32 @ocfs2_set_bit(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
