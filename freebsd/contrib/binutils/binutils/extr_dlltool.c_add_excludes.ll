; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_dlltool.c_add_excludes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_dlltool.c_add_excludes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i8*, %struct.string_list* }

@.str = private unnamed_addr constant [3 x i8] c",:\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"_%s\00", align 1
@excludes = common dso_local global %struct.string_list* null, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"Excluding symbol: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @add_excludes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_excludes(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.string_list*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = call i8* @xstrdup(i8* %6)
  store i8* %7, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i8* @strtok(i8* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %9, i8** %4, align 8
  br label %10

10:                                               ; preds = %47, %1
  %11 = load i8*, i8** %4, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %49

13:                                               ; preds = %10
  %14 = call i64 @xmalloc(i32 16)
  %15 = inttoptr i64 %14 to %struct.string_list*
  store %struct.string_list* %15, %struct.string_list** %5, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @strlen(i8* %16)
  %18 = add nsw i32 %17, 2
  %19 = call i64 @xmalloc(i32 %18)
  %20 = inttoptr i64 %19 to i8*
  %21 = load %struct.string_list*, %struct.string_list** %5, align 8
  %22 = getelementptr inbounds %struct.string_list, %struct.string_list* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 64
  br i1 %26, label %27, label %33

27:                                               ; preds = %13
  %28 = load %struct.string_list*, %struct.string_list** %5, align 8
  %29 = getelementptr inbounds %struct.string_list, %struct.string_list* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @sprintf(i8* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  br label %39

33:                                               ; preds = %13
  %34 = load %struct.string_list*, %struct.string_list** %5, align 8
  %35 = getelementptr inbounds %struct.string_list, %struct.string_list* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load i8*, i8** %4, align 8
  %38 = call i32 @sprintf(i8* %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %37)
  br label %39

39:                                               ; preds = %33, %27
  %40 = load %struct.string_list*, %struct.string_list** @excludes, align 8
  %41 = load %struct.string_list*, %struct.string_list** %5, align 8
  %42 = getelementptr inbounds %struct.string_list, %struct.string_list* %41, i32 0, i32 1
  store %struct.string_list* %40, %struct.string_list** %42, align 8
  %43 = load %struct.string_list*, %struct.string_list** %5, align 8
  store %struct.string_list* %43, %struct.string_list** @excludes, align 8
  %44 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %45 = load i8*, i8** %4, align 8
  %46 = call i32 @inform(i32 %44, i8* %45)
  br label %47

47:                                               ; preds = %39
  %48 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %48, i8** %4, align 8
  br label %10

49:                                               ; preds = %10
  %50 = load i8*, i8** %3, align 8
  %51 = call i32 @free(i8* %50)
  ret void
}

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i8* @strtok(i8*, i8*) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @inform(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
