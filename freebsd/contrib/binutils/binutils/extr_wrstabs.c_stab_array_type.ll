; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_wrstabs.c_stab_array_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_wrstabs.c_stab_array_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stab_write_handle = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%ld=@S;\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"ar%s;%ld;%ld;%s\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i64, i32)* @stab_array_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stab_array_type(i8* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.stab_write_handle*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load i8*, i8** %6, align 8
  %19 = bitcast i8* %18 to %struct.stab_write_handle*
  store %struct.stab_write_handle* %19, %struct.stab_write_handle** %10, align 8
  %20 = load %struct.stab_write_handle*, %struct.stab_write_handle** %10, align 8
  %21 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %11, align 4
  %25 = load %struct.stab_write_handle*, %struct.stab_write_handle** %10, align 8
  %26 = call i8* @stab_pop_type(%struct.stab_write_handle* %25)
  store i8* %26, i8** %13, align 8
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %4
  %30 = load %struct.stab_write_handle*, %struct.stab_write_handle** %10, align 8
  %31 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br label %36

36:                                               ; preds = %29, %4
  %37 = phi i1 [ true, %4 ], [ %35, %29 ]
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %11, align 4
  %39 = load %struct.stab_write_handle*, %struct.stab_write_handle** %10, align 8
  %40 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %12, align 4
  %44 = load %struct.stab_write_handle*, %struct.stab_write_handle** %10, align 8
  %45 = call i8* @stab_pop_type(%struct.stab_write_handle* %44)
  store i8* %45, i8** %14, align 8
  %46 = load i8*, i8** %13, align 8
  %47 = call i32 @strlen(i8* %46)
  %48 = load i8*, i8** %14, align 8
  %49 = call i32 @strlen(i8* %48)
  %50 = add nsw i32 %47, %49
  %51 = add nsw i32 %50, 100
  %52 = call i64 @xmalloc(i32 %51)
  %53 = inttoptr i64 %52 to i8*
  store i8* %53, i8** %15, align 8
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %36
  store i64 0, i64* %16, align 8
  %57 = load i8*, i8** %15, align 8
  store i8 0, i8* %57, align 1
  br label %70

58:                                               ; preds = %36
  %59 = load %struct.stab_write_handle*, %struct.stab_write_handle** %10, align 8
  %60 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %16, align 8
  %62 = load %struct.stab_write_handle*, %struct.stab_write_handle** %10, align 8
  %63 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %64, 1
  store i64 %65, i64* %63, align 8
  %66 = load i32, i32* @TRUE, align 4
  store i32 %66, i32* %11, align 4
  %67 = load i8*, i8** %15, align 8
  %68 = load i64, i64* %16, align 8
  %69 = call i32 (i8*, i8*, ...) @sprintf(i8* %67, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %68)
  br label %70

70:                                               ; preds = %58, %56
  %71 = load i8*, i8** %15, align 8
  %72 = load i8*, i8** %15, align 8
  %73 = call i32 @strlen(i8* %72)
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %71, i64 %74
  %76 = load i8*, i8** %13, align 8
  %77 = load i64, i64* %7, align 8
  %78 = load i64, i64* %8, align 8
  %79 = load i8*, i8** %14, align 8
  %80 = call i32 (i8*, i8*, ...) @sprintf(i8* %75, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %76, i64 %77, i64 %78, i8* %79)
  %81 = load i8*, i8** %13, align 8
  %82 = call i32 @free(i8* %81)
  %83 = load i8*, i8** %14, align 8
  %84 = call i32 @free(i8* %83)
  %85 = load i64, i64* %8, align 8
  %86 = load i64, i64* %7, align 8
  %87 = icmp slt i64 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %70
  store i32 0, i32* %17, align 4
  br label %98

89:                                               ; preds = %70
  %90 = load i32, i32* %12, align 4
  %91 = zext i32 %90 to i64
  %92 = load i64, i64* %8, align 8
  %93 = load i64, i64* %7, align 8
  %94 = sub nsw i64 %92, %93
  %95 = add nsw i64 %94, 1
  %96 = mul nsw i64 %91, %95
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %17, align 4
  br label %98

98:                                               ; preds = %89, %88
  %99 = load %struct.stab_write_handle*, %struct.stab_write_handle** %10, align 8
  %100 = load i8*, i8** %15, align 8
  %101 = load i64, i64* %16, align 8
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* %17, align 4
  %104 = call i32 @stab_push_string(%struct.stab_write_handle* %99, i8* %100, i64 %101, i32 %102, i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %98
  %107 = load i32, i32* @FALSE, align 4
  store i32 %107, i32* %5, align 4
  br label %112

108:                                              ; preds = %98
  %109 = load i8*, i8** %15, align 8
  %110 = call i32 @free(i8* %109)
  %111 = load i32, i32* @TRUE, align 4
  store i32 %111, i32* %5, align 4
  br label %112

112:                                              ; preds = %108, %106
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local i8* @stab_pop_type(%struct.stab_write_handle*) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @stab_push_string(%struct.stab_write_handle*, i8*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
