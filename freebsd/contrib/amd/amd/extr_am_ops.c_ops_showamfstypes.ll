; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_am_ops.c_ops_showamfstypes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_am_ops.c_ops_showamfstypes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.am_ops = type { i8* }

@vops = common dso_local global %struct.am_ops** null, align 8
@.str = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"\0A      \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ops_showamfstypes(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.am_ops**, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 0
  store i8 0, i8* %8, align 1
  %9 = load %struct.am_ops**, %struct.am_ops*** @vops, align 8
  store %struct.am_ops** %9, %struct.am_ops*** %5, align 8
  br label %10

10:                                               ; preds = %48, %2
  %11 = load %struct.am_ops**, %struct.am_ops*** %5, align 8
  %12 = load %struct.am_ops*, %struct.am_ops** %11, align 8
  %13 = icmp ne %struct.am_ops* %12, null
  br i1 %13, label %14, label %51

14:                                               ; preds = %10
  %15 = load i8*, i8** %3, align 8
  %16 = load %struct.am_ops**, %struct.am_ops*** %5, align 8
  %17 = load %struct.am_ops*, %struct.am_ops** %16, align 8
  %18 = getelementptr inbounds %struct.am_ops, %struct.am_ops* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @xstrlcat(i8* %15, i8* %19, i64 %20)
  %22 = load %struct.am_ops**, %struct.am_ops*** %5, align 8
  %23 = getelementptr inbounds %struct.am_ops*, %struct.am_ops** %22, i64 1
  %24 = load %struct.am_ops*, %struct.am_ops** %23, align 8
  %25 = icmp ne %struct.am_ops* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %14
  %27 = load i8*, i8** %3, align 8
  %28 = load i64, i64* %4, align 8
  %29 = call i32 @xstrlcat(i8* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 %28)
  br label %30

30:                                               ; preds = %26, %14
  %31 = load %struct.am_ops**, %struct.am_ops*** %5, align 8
  %32 = load %struct.am_ops*, %struct.am_ops** %31, align 8
  %33 = getelementptr inbounds %struct.am_ops, %struct.am_ops* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i64 @strlen(i8* %34)
  %36 = add nsw i64 %35, 2
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %38, %36
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp sgt i32 %41, 62
  br i1 %42, label %43, label %47

43:                                               ; preds = %30
  store i32 0, i32* %6, align 4
  %44 = load i8*, i8** %3, align 8
  %45 = load i64, i64* %4, align 8
  %46 = call i32 @xstrlcat(i8* %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %45)
  br label %47

47:                                               ; preds = %43, %30
  br label %48

48:                                               ; preds = %47
  %49 = load %struct.am_ops**, %struct.am_ops*** %5, align 8
  %50 = getelementptr inbounds %struct.am_ops*, %struct.am_ops** %49, i32 1
  store %struct.am_ops** %50, %struct.am_ops*** %5, align 8
  br label %10

51:                                               ; preds = %10
  ret void
}

declare dso_local i32 @xstrlcat(i8*, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
