; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_invalidate_any_buried_refs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_invalidate_any_buried_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ls_expr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @invalidate_any_buried_refs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @invalidate_any_buried_refs(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ls_expr*, align 8
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i64 @MEM_P(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  %12 = call i64 @simple_mem(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = load i32, i32* %2, align 4
  %16 = call %struct.ls_expr* @ldst_entry(i32 %15)
  store %struct.ls_expr* %16, %struct.ls_expr** %6, align 8
  %17 = load %struct.ls_expr*, %struct.ls_expr** %6, align 8
  %18 = getelementptr inbounds %struct.ls_expr, %struct.ls_expr* %17, i32 0, i32 0
  store i32 1, i32* %18, align 4
  br label %19

19:                                               ; preds = %14, %10, %1
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @GET_CODE(i32 %20)
  %22 = call i8* @GET_RTX_FORMAT(i32 %21)
  store i8* %22, i8** %3, align 8
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @GET_CODE(i32 %23)
  %25 = call i32 @GET_RTX_LENGTH(i32 %24)
  %26 = sub nsw i32 %25, 1
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %69, %19
  %28 = load i32, i32* %4, align 4
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %72

30:                                               ; preds = %27
  %31 = load i8*, i8** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 101
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = load i32, i32* %2, align 4
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @XEXP(i32 %39, i32 %40)
  call void @invalidate_any_buried_refs(i32 %41)
  br label %68

42:                                               ; preds = %30
  %43 = load i8*, i8** %3, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 69
  br i1 %49, label %50, label %67

50:                                               ; preds = %42
  %51 = load i32, i32* %2, align 4
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @XVECLEN(i32 %51, i32 %52)
  %54 = sub nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %63, %50
  %56 = load i32, i32* %5, align 4
  %57 = icmp sge i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %55
  %59 = load i32, i32* %2, align 4
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @XVECEXP(i32 %59, i32 %60, i32 %61)
  call void @invalidate_any_buried_refs(i32 %62)
  br label %63

63:                                               ; preds = %58
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %5, align 4
  br label %55

66:                                               ; preds = %55
  br label %67

67:                                               ; preds = %66, %42
  br label %68

68:                                               ; preds = %67, %38
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %4, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %4, align 4
  br label %27

72:                                               ; preds = %27
  ret void
}

declare dso_local i64 @MEM_P(i32) #1

declare dso_local i64 @simple_mem(i32) #1

declare dso_local %struct.ls_expr* @ldst_entry(i32) #1

declare dso_local i8* @GET_RTX_FORMAT(i32) #1

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @GET_RTX_LENGTH(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @XVECLEN(i32, i32) #1

declare dso_local i32 @XVECEXP(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
