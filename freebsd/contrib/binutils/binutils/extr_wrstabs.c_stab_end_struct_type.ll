; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_wrstabs.c_stab_end_struct_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_wrstabs.c_stab_end_struct_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stab_write_handle = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i64, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"%s%s;\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @stab_end_struct_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stab_end_struct_type(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.stab_write_handle*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = bitcast i8* %11 to %struct.stab_write_handle*
  store %struct.stab_write_handle* %12, %struct.stab_write_handle** %4, align 8
  %13 = load %struct.stab_write_handle*, %struct.stab_write_handle** %4, align 8
  %14 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = icmp ne %struct.TYPE_2__* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load %struct.stab_write_handle*, %struct.stab_write_handle** %4, align 8
  %19 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br label %24

24:                                               ; preds = %17, %1
  %25 = phi i1 [ false, %1 ], [ %23, %17 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.stab_write_handle*, %struct.stab_write_handle** %4, align 8
  %29 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %5, align 4
  %33 = load %struct.stab_write_handle*, %struct.stab_write_handle** %4, align 8
  %34 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %6, align 8
  %38 = load %struct.stab_write_handle*, %struct.stab_write_handle** %4, align 8
  %39 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %7, align 4
  %43 = load %struct.stab_write_handle*, %struct.stab_write_handle** %4, align 8
  %44 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** %8, align 8
  %48 = load %struct.stab_write_handle*, %struct.stab_write_handle** %4, align 8
  %49 = call i8* @stab_pop_type(%struct.stab_write_handle* %48)
  store i8* %49, i8** %9, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = call i64 @strlen(i8* %50)
  %52 = load i8*, i8** %8, align 8
  %53 = call i64 @strlen(i8* %52)
  %54 = add nsw i64 %51, %53
  %55 = add nsw i64 %54, 2
  %56 = call i64 @xmalloc(i64 %55)
  %57 = inttoptr i64 %56 to i8*
  store i8* %57, i8** %10, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = call i32 @sprintf(i8* %58, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %59, i8* %60)
  %62 = load i8*, i8** %9, align 8
  %63 = call i32 @free(i8* %62)
  %64 = load i8*, i8** %8, align 8
  %65 = call i32 @free(i8* %64)
  %66 = load %struct.stab_write_handle*, %struct.stab_write_handle** %4, align 8
  %67 = load i8*, i8** %10, align 8
  %68 = load i64, i64* %6, align 8
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @stab_push_string(%struct.stab_write_handle* %66, i8* %67, i64 %68, i32 %69, i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %24
  %74 = load i32, i32* @FALSE, align 4
  store i32 %74, i32* %2, align 4
  br label %79

75:                                               ; preds = %24
  %76 = load i8*, i8** %10, align 8
  %77 = call i32 @free(i8* %76)
  %78 = load i32, i32* @TRUE, align 4
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %75, %73
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @stab_pop_type(%struct.stab_write_handle*) #1

declare dso_local i64 @xmalloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @stab_push_string(%struct.stab_write_handle*, i8*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
