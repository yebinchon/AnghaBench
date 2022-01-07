; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_wrstabs.c_stab_start_struct_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_wrstabs.c_stab_start_struct_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stab_write_handle = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@FALSE = common dso_local global i64 0, align 8
@DEBUG_KIND_ILLEGAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%ld=\00", align 1
@TRUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"%c%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8*, i32, i64, i32)* @stab_start_struct_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @stab_start_struct_type(i8* %0, i8* %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.stab_write_handle*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load i8*, i8** %7, align 8
  %17 = bitcast i8* %16 to %struct.stab_write_handle*
  store %struct.stab_write_handle* %17, %struct.stab_write_handle** %12, align 8
  %18 = call i64 @xmalloc(i32 40)
  %19 = inttoptr i64 %18 to i8*
  store i8* %19, i8** %15, align 8
  %20 = load i32, i32* %9, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %5
  store i64 0, i64* %13, align 8
  %23 = load i8*, i8** %15, align 8
  store i8 0, i8* %23, align 1
  %24 = load i64, i64* @FALSE, align 8
  store i64 %24, i64* %14, align 8
  br label %41

25:                                               ; preds = %5
  %26 = load %struct.stab_write_handle*, %struct.stab_write_handle** %12, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @DEBUG_KIND_ILLEGAL, align 4
  %30 = call i64 @stab_get_struct_index(%struct.stab_write_handle* %26, i8* %27, i32 %28, i32 %29, i32* %11)
  store i64 %30, i64* %13, align 8
  %31 = load i64, i64* %13, align 8
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load i64, i64* @FALSE, align 8
  store i64 %34, i64* %6, align 8
  br label %77

35:                                               ; preds = %25
  %36 = load i8*, i8** %15, align 8
  %37 = load i64, i64* %13, align 8
  %38 = trunc i64 %37 to i8
  %39 = call i32 (i8*, i8*, i8, ...) @sprintf(i8* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8 signext %38)
  %40 = load i64, i64* @TRUE, align 8
  store i64 %40, i64* %14, align 8
  br label %41

41:                                               ; preds = %35, %22
  %42 = load i8*, i8** %15, align 8
  %43 = load i8*, i8** %15, align 8
  %44 = call i32 @strlen(i8* %43)
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %42, i64 %45
  %47 = load i64, i64* %10, align 8
  %48 = icmp ne i64 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 115, i32 117
  %51 = trunc i32 %50 to i8
  %52 = load i32, i32* %11, align 4
  %53 = call i32 (i8*, i8*, i8, ...) @sprintf(i8* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8 signext %51, i32 %52)
  %54 = load %struct.stab_write_handle*, %struct.stab_write_handle** %12, align 8
  %55 = load i8*, i8** %15, align 8
  %56 = load i64, i64* %13, align 8
  %57 = load i64, i64* %14, align 8
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @stab_push_string(%struct.stab_write_handle* %54, i8* %55, i64 %56, i64 %57, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %41
  %62 = load i64, i64* @FALSE, align 8
  store i64 %62, i64* %6, align 8
  br label %77

63:                                               ; preds = %41
  %64 = call i64 @xmalloc(i32 1)
  %65 = inttoptr i64 %64 to i8*
  %66 = load %struct.stab_write_handle*, %struct.stab_write_handle** %12, align 8
  %67 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store i8* %65, i8** %69, align 8
  %70 = load %struct.stab_write_handle*, %struct.stab_write_handle** %12, align 8
  %71 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 0
  store i8 0, i8* %75, align 1
  %76 = load i64, i64* @TRUE, align 8
  store i64 %76, i64* %6, align 8
  br label %77

77:                                               ; preds = %63, %61, %33
  %78 = load i64, i64* %6, align 8
  ret i64 %78
}

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i64 @stab_get_struct_index(%struct.stab_write_handle*, i8*, i32, i32, i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8 signext, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @stab_push_string(%struct.stab_write_handle*, i8*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
