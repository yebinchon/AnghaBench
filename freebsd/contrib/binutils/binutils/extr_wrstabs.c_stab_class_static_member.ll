; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_wrstabs.c_stab_class_static_member.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_wrstabs.c_stab_class_static_member.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stab_write_handle = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i64 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"/0\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"/1\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"%s%s:%s%s:%s;\00", align 1
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8*, i8*, i32)* @stab_class_static_member to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @stab_class_static_member(i8* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.stab_write_handle*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.stab_write_handle*
  store %struct.stab_write_handle* %15, %struct.stab_write_handle** %9, align 8
  %16 = load %struct.stab_write_handle*, %struct.stab_write_handle** %9, align 8
  %17 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %10, align 8
  %21 = load %struct.stab_write_handle*, %struct.stab_write_handle** %9, align 8
  %22 = call i8* @stab_pop_type(%struct.stab_write_handle* %21)
  store i8* %22, i8** %11, align 8
  %23 = load %struct.stab_write_handle*, %struct.stab_write_handle** %9, align 8
  %24 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load %struct.stab_write_handle*, %struct.stab_write_handle** %9, align 8
  %32 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i64 @strlen(i8* %35)
  %37 = load i8*, i8** %6, align 8
  %38 = call i64 @strlen(i8* %37)
  %39 = add nsw i64 %36, %38
  %40 = load i8*, i8** %11, align 8
  %41 = call i64 @strlen(i8* %40)
  %42 = add nsw i64 %39, %41
  %43 = load i8*, i8** %7, align 8
  %44 = call i64 @strlen(i8* %43)
  %45 = add nsw i64 %42, %44
  %46 = add nsw i64 %45, 10
  %47 = call i64 @xmalloc(i64 %46)
  %48 = inttoptr i64 %47 to i8*
  store i8* %48, i8** %12, align 8
  %49 = load i32, i32* %8, align 4
  switch i32 %49, label %50 [
    i32 128, label %52
    i32 130, label %53
    i32 129, label %54
  ]

50:                                               ; preds = %4
  %51 = call i32 (...) @abort() #3
  unreachable

52:                                               ; preds = %4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  br label %55

53:                                               ; preds = %4
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %13, align 8
  br label %55

54:                                               ; preds = %4
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %13, align 8
  br label %55

55:                                               ; preds = %54, %53, %52
  %56 = load i8*, i8** %12, align 8
  %57 = load %struct.stab_write_handle*, %struct.stab_write_handle** %9, align 8
  %58 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = load i8*, i8** %13, align 8
  %64 = load i8*, i8** %11, align 8
  %65 = load i8*, i8** %7, align 8
  %66 = call i32 @sprintf(i8* %56, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %61, i8* %62, i8* %63, i8* %64, i8* %65)
  %67 = load %struct.stab_write_handle*, %struct.stab_write_handle** %9, align 8
  %68 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @free(i8* %71)
  %73 = load i8*, i8** %12, align 8
  %74 = load %struct.stab_write_handle*, %struct.stab_write_handle** %9, align 8
  %75 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  store i8* %73, i8** %77, align 8
  %78 = load i64, i64* %10, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %55
  %81 = load i64, i64* @TRUE, align 8
  %82 = load %struct.stab_write_handle*, %struct.stab_write_handle** %9, align 8
  %83 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %82, i32 0, i32 0
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  store i64 %81, i64* %85, align 8
  br label %86

86:                                               ; preds = %80, %55
  %87 = load i64, i64* @TRUE, align 8
  ret i64 %87
}

declare dso_local i8* @stab_pop_type(%struct.stab_write_handle*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @xmalloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
