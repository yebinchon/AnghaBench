; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_cc.c_dt_lib_depend_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_cc.c_dt_lib_depend_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_7__*, i32* }

@EINVAL = common dso_local global i32 0, align 4
@MAXPATHLEN = common dso_local global i32 0, align 4
@EDT_NOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dt_lib_depend_add(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = icmp ne i8* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load i8*, i8** %7, align 8
  %15 = call i8* @strrchr(i8* %14, i8 signext 47)
  store i8* %15, i8** %9, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* @EINVAL, align 4
  %20 = call i32 @dt_set_errno(i32* %18, i32 %19)
  store i32 %20, i32* %4, align 4
  br label %71

21:                                               ; preds = %3
  %22 = load i32*, i32** %5, align 8
  %23 = call %struct.TYPE_7__* @dt_zalloc(i32* %22, i32 16)
  store %struct.TYPE_7__* %23, %struct.TYPE_7__** %8, align 8
  %24 = icmp eq %struct.TYPE_7__* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 -1, i32* %4, align 4
  br label %71

26:                                               ; preds = %21
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* @MAXPATHLEN, align 4
  %29 = call %struct.TYPE_7__* @dt_alloc(i32* %27, i32 %28)
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  store %struct.TYPE_7__* %29, %struct.TYPE_7__** %31, align 8
  %32 = icmp eq %struct.TYPE_7__* %29, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = load i32*, i32** %5, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %36 = call i32 @dt_free(i32* %34, %struct.TYPE_7__* %35)
  store i32 -1, i32* %4, align 4
  br label %71

37:                                               ; preds = %26
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = ptrtoint i8* %42 to i64
  %45 = ptrtoint i8* %43 to i64
  %46 = sub i64 %44, %45
  %47 = add nsw i64 %46, 2
  %48 = trunc i64 %47 to i32
  %49 = call i32 @strlcpy(%struct.TYPE_7__* %40, i8* %41, i32 %48)
  %50 = load i8*, i8** %7, align 8
  %51 = call i32* @strdup(i8* %50)
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  store i32* %51, i32** %53, align 8
  %54 = icmp eq i32* %51, null
  br i1 %54, label %55, label %67

55:                                               ; preds = %37
  %56 = load i32*, i32** %5, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = call i32 @dt_free(i32* %56, %struct.TYPE_7__* %59)
  %61 = load i32*, i32** %5, align 8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %63 = call i32 @dt_free(i32* %61, %struct.TYPE_7__* %62)
  %64 = load i32*, i32** %5, align 8
  %65 = load i32, i32* @EDT_NOMEM, align 4
  %66 = call i32 @dt_set_errno(i32* %64, i32 %65)
  store i32 %66, i32* %4, align 4
  br label %71

67:                                               ; preds = %37
  %68 = load i32*, i32** %6, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %70 = call i32 @dt_list_append(i32* %68, %struct.TYPE_7__* %69)
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %67, %55, %33, %25, %17
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @dt_set_errno(i32*, i32) #1

declare dso_local %struct.TYPE_7__* @dt_zalloc(i32*, i32) #1

declare dso_local %struct.TYPE_7__* @dt_alloc(i32*, i32) #1

declare dso_local i32 @dt_free(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @strlcpy(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local i32 @dt_list_append(i32*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
