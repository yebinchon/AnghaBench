; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_environ.c_set_in_environ.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_environ.c_set_in_environ.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.environ = type { i8**, i32 }

@.str = private unnamed_addr constant [2 x i8] c"=\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_in_environ(%struct.environ* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.environ*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  store %struct.environ* %0, %struct.environ** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @strlen(i8* %11)
  store i32 %12, i32* %8, align 4
  %13 = load %struct.environ*, %struct.environ** %4, align 8
  %14 = getelementptr inbounds %struct.environ, %struct.environ* %13, i32 0, i32 0
  %15 = load i8**, i8*** %14, align 8
  store i8** %15, i8*** %9, align 8
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %39, %3
  %17 = load i8**, i8*** %9, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8*, i8** %17, i64 %19
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %10, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %42

23:                                               ; preds = %16
  %24 = load i8*, i8** %10, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i64 @strncmp(i8* %24, i8* %25, i32 %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %23
  %30 = load i8*, i8** %10, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 61
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %42

38:                                               ; preds = %29, %23
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %16

42:                                               ; preds = %37, %16
  %43 = load i8*, i8** %10, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %45, label %76

45:                                               ; preds = %42
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.environ*, %struct.environ** %4, align 8
  %48 = getelementptr inbounds %struct.environ, %struct.environ* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %46, %49
  br i1 %50, label %51, label %70

51:                                               ; preds = %45
  %52 = load %struct.environ*, %struct.environ** %4, align 8
  %53 = getelementptr inbounds %struct.environ, %struct.environ* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, 10
  store i32 %55, i32* %53, align 8
  %56 = load i8**, i8*** %9, align 8
  %57 = bitcast i8** %56 to i8*
  %58 = load %struct.environ*, %struct.environ** %4, align 8
  %59 = getelementptr inbounds %struct.environ, %struct.environ* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = mul i64 %62, 8
  %64 = trunc i64 %63 to i32
  %65 = call i64 @xrealloc(i8* %57, i32 %64)
  %66 = inttoptr i64 %65 to i8**
  store i8** %66, i8*** %9, align 8
  %67 = load i8**, i8*** %9, align 8
  %68 = load %struct.environ*, %struct.environ** %4, align 8
  %69 = getelementptr inbounds %struct.environ, %struct.environ* %68, i32 0, i32 0
  store i8** %67, i8*** %69, align 8
  br label %70

70:                                               ; preds = %51, %45
  %71 = load i8**, i8*** %9, align 8
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8*, i8** %71, i64 %74
  store i8* null, i8** %75, align 8
  br label %79

76:                                               ; preds = %42
  %77 = load i8*, i8** %10, align 8
  %78 = call i32 @xfree(i8* %77)
  br label %79

79:                                               ; preds = %76, %70
  %80 = load i32, i32* %8, align 4
  %81 = load i8*, i8** %6, align 8
  %82 = call i32 @strlen(i8* %81)
  %83 = add nsw i32 %80, %82
  %84 = add nsw i32 %83, 2
  %85 = call i64 @xmalloc(i32 %84)
  %86 = inttoptr i64 %85 to i8*
  store i8* %86, i8** %10, align 8
  %87 = load i8*, i8** %10, align 8
  %88 = load i8*, i8** %5, align 8
  %89 = call i32 @strcpy(i8* %87, i8* %88)
  %90 = load i8*, i8** %10, align 8
  %91 = call i32 @strcat(i8* %90, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %92 = load i8*, i8** %10, align 8
  %93 = load i8*, i8** %6, align 8
  %94 = call i32 @strcat(i8* %92, i8* %93)
  %95 = load i8*, i8** %10, align 8
  %96 = load i8**, i8*** %9, align 8
  %97 = load i32, i32* %7, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8*, i8** %96, i64 %98
  store i8* %95, i8** %99, align 8
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @xrealloc(i8*, i32) #1

declare dso_local i32 @xfree(i8*) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
