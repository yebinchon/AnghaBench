; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_lex.c_warn_in_comment.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_lex.c_warn_in_comment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8, i8* }

@trigraphs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*)* @warn_in_comment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @warn_in_comment(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i8, i8* %8, align 8
  %10 = sext i8 %9 to i32
  %11 = icmp ne i32 %10, 47
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %56

13:                                               ; preds = %2
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* @trigraphs, align 4
  %16 = call i64 @CPP_OPTION(i32* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %13
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i64 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = icmp eq i8* %22, %25
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %3, align 4
  br label %56

28:                                               ; preds = %13
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 3
  store i8* %32, i8** %6, align 8
  br label %33

33:                                               ; preds = %38, %28
  %34 = load i8*, i8** %6, align 8
  %35 = load i8, i8* %34, align 1
  %36 = call i64 @is_nvspace(i8 signext %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i8*, i8** %6, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %6, align 8
  br label %33

41:                                               ; preds = %33
  %42 = load i8*, i8** %6, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 10
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load i8*, i8** %6, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = icmp ult i8* %47, %51
  br label %53

53:                                               ; preds = %46, %41
  %54 = phi i1 [ false, %41 ], [ %52, %46 ]
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %53, %18, %12
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i64 @CPP_OPTION(i32*, i32) #1

declare dso_local i64 @is_nvspace(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
