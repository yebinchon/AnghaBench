; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_wrstabs.c_stab_start_class_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_wrstabs.c_stab_start_class_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stab_write_handle = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i8*, i64 }

@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"~%%%ld\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"~%%%s\00", align 1
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8*, i32, i64, i32, i64, i64)* @stab_start_class_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @stab_start_class_type(i8* %0, i8* %1, i32 %2, i64 %3, i32 %4, i64 %5, i64 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.stab_write_handle*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = bitcast i8* %20 to %struct.stab_write_handle*
  store %struct.stab_write_handle* %21, %struct.stab_write_handle** %16, align 8
  %22 = load i64, i64* %14, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %7
  %25 = load i64, i64* %15, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24, %7
  %28 = load i64, i64* @FALSE, align 8
  store i64 %28, i64* %17, align 8
  store i8* null, i8** %18, align 8
  br label %37

29:                                               ; preds = %24
  %30 = load %struct.stab_write_handle*, %struct.stab_write_handle** %16, align 8
  %31 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %17, align 8
  %35 = load %struct.stab_write_handle*, %struct.stab_write_handle** %16, align 8
  %36 = call i8* @stab_pop_type(%struct.stab_write_handle* %35)
  store i8* %36, i8** %18, align 8
  br label %37

37:                                               ; preds = %29, %27
  %38 = load i8*, i8** %9, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = load i32, i32* %11, align 4
  %41 = load i64, i64* %12, align 8
  %42 = load i32, i32* %13, align 4
  %43 = call i32 @stab_start_struct_type(i8* %38, i8* %39, i32 %40, i64 %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %37
  %46 = load i64, i64* @FALSE, align 8
  store i64 %46, i64* %8, align 8
  br label %99

47:                                               ; preds = %37
  %48 = load i64, i64* %14, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %88

50:                                               ; preds = %47
  %51 = load i64, i64* %15, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %71

53:                                               ; preds = %50
  %54 = load %struct.stab_write_handle*, %struct.stab_write_handle** %16, align 8
  %55 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = icmp ugt i8* %58, null
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert(i32 %60)
  %62 = call i64 @xmalloc(i32 20)
  %63 = inttoptr i64 %62 to i8*
  store i8* %63, i8** %19, align 8
  %64 = load i8*, i8** %19, align 8
  %65 = load %struct.stab_write_handle*, %struct.stab_write_handle** %16, align 8
  %66 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @sprintf(i8* %64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %69)
  br label %82

71:                                               ; preds = %50
  %72 = load i8*, i8** %18, align 8
  %73 = call i32 @strlen(i8* %72)
  %74 = add nsw i32 %73, 3
  %75 = call i64 @xmalloc(i32 %74)
  %76 = inttoptr i64 %75 to i8*
  store i8* %76, i8** %19, align 8
  %77 = load i8*, i8** %19, align 8
  %78 = load i8*, i8** %18, align 8
  %79 = call i32 @sprintf(i8* %77, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %78)
  %80 = load i8*, i8** %18, align 8
  %81 = call i32 @free(i8* %80)
  br label %82

82:                                               ; preds = %71, %53
  %83 = load i8*, i8** %19, align 8
  %84 = load %struct.stab_write_handle*, %struct.stab_write_handle** %16, align 8
  %85 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %84, i32 0, i32 0
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  store i8* %83, i8** %87, align 8
  br label %88

88:                                               ; preds = %82, %47
  %89 = load i64, i64* %17, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %88
  %92 = load i64, i64* @TRUE, align 8
  %93 = load %struct.stab_write_handle*, %struct.stab_write_handle** %16, align 8
  %94 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %93, i32 0, i32 0
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 2
  store i64 %92, i64* %96, align 8
  br label %97

97:                                               ; preds = %91, %88
  %98 = load i64, i64* @TRUE, align 8
  store i64 %98, i64* %8, align 8
  br label %99

99:                                               ; preds = %97, %45
  %100 = load i64, i64* %8, align 8
  ret i64 %100
}

declare dso_local i8* @stab_pop_type(%struct.stab_write_handle*) #1

declare dso_local i32 @stab_start_struct_type(i8*, i8*, i32, i64, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
