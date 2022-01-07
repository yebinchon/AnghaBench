; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_wrstabs.c_stab_set_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_wrstabs.c_stab_set_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stab_write_handle = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%ld=@S;\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"S%s\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @stab_set_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stab_set_type(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.stab_write_handle*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.stab_write_handle*
  store %struct.stab_write_handle* %12, %struct.stab_write_handle** %6, align 8
  %13 = load %struct.stab_write_handle*, %struct.stab_write_handle** %6, align 8
  %14 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  %18 = load %struct.stab_write_handle*, %struct.stab_write_handle** %6, align 8
  %19 = call i8* @stab_pop_type(%struct.stab_write_handle* %18)
  store i8* %19, i8** %8, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 @strlen(i8* %20)
  %22 = add nsw i32 %21, 30
  %23 = call i64 @xmalloc(i32 %22)
  %24 = inttoptr i64 %23 to i8*
  store i8* %24, i8** %9, align 8
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %2
  %28 = load i8*, i8** %9, align 8
  store i8 0, i8* %28, align 1
  store i64 0, i64* %10, align 8
  br label %41

29:                                               ; preds = %2
  %30 = load %struct.stab_write_handle*, %struct.stab_write_handle** %6, align 8
  %31 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %10, align 8
  %33 = load %struct.stab_write_handle*, %struct.stab_write_handle** %6, align 8
  %34 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* %34, align 8
  %37 = load i32, i32* @TRUE, align 4
  store i32 %37, i32* %7, align 4
  %38 = load i8*, i8** %9, align 8
  %39 = load i64, i64* %10, align 8
  %40 = call i32 (i8*, i8*, ...) @sprintf(i8* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %39)
  br label %41

41:                                               ; preds = %29, %27
  %42 = load i8*, i8** %9, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = call i32 @strlen(i8* %43)
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %42, i64 %45
  %47 = load i8*, i8** %8, align 8
  %48 = call i32 (i8*, i8*, ...) @sprintf(i8* %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %47)
  %49 = load i8*, i8** %8, align 8
  %50 = call i32 @free(i8* %49)
  %51 = load %struct.stab_write_handle*, %struct.stab_write_handle** %6, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = load i64, i64* %10, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @stab_push_string(%struct.stab_write_handle* %51, i8* %52, i64 %53, i32 %54, i32 0)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %41
  %58 = load i32, i32* @FALSE, align 4
  store i32 %58, i32* %3, align 4
  br label %63

59:                                               ; preds = %41
  %60 = load i8*, i8** %9, align 8
  %61 = call i32 @free(i8* %60)
  %62 = load i32, i32* @TRUE, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %59, %57
  %64 = load i32, i32* %3, align 4
  ret i32 %64
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
