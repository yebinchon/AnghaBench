; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_wrstabs.c_stab_typdef.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_wrstabs.c_stab_typdef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stab_write_handle = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.string_hash_entry = type { i64, i32 }

@.str = private unnamed_addr constant [7 x i8] c"%s:t%s\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"%s:t%ld=%s\00", align 1
@N_LSYM = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"string_hash_lookup failed: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @stab_typdef to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stab_typdef(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.stab_write_handle*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.string_hash_entry*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.stab_write_handle*
  store %struct.stab_write_handle* %13, %struct.stab_write_handle** %6, align 8
  %14 = load %struct.stab_write_handle*, %struct.stab_write_handle** %6, align 8
  %15 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %7, align 8
  %19 = load %struct.stab_write_handle*, %struct.stab_write_handle** %6, align 8
  %20 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %8, align 4
  %24 = load %struct.stab_write_handle*, %struct.stab_write_handle** %6, align 8
  %25 = call i8* @stab_pop_type(%struct.stab_write_handle* %24)
  store i8* %25, i8** %9, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = call i64 @strlen(i8* %26)
  %28 = load i8*, i8** %9, align 8
  %29 = call i64 @strlen(i8* %28)
  %30 = add nsw i64 %27, %29
  %31 = add nsw i64 %30, 20
  %32 = call i64 @xmalloc(i64 %31)
  %33 = inttoptr i64 %32 to i8*
  store i8* %33, i8** %10, align 8
  %34 = load i64, i64* %7, align 8
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %2
  %37 = load i8*, i8** %10, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %38, i8* %39)
  br label %54

41:                                               ; preds = %2
  %42 = load %struct.stab_write_handle*, %struct.stab_write_handle** %6, align 8
  %43 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %7, align 8
  %45 = load %struct.stab_write_handle*, %struct.stab_write_handle** %6, align 8
  %46 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %46, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = load i64, i64* %7, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %49, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %50, i64 %51, i8* %52)
  br label %54

54:                                               ; preds = %41, %36
  %55 = load i8*, i8** %9, align 8
  %56 = call i32 @free(i8* %55)
  %57 = load %struct.stab_write_handle*, %struct.stab_write_handle** %6, align 8
  %58 = load i32, i32* @N_LSYM, align 4
  %59 = load i8*, i8** %10, align 8
  %60 = call i32 @stab_write_symbol(%struct.stab_write_handle* %57, i32 %58, i32 0, i32 0, i8* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %54
  %63 = load i32, i32* @FALSE, align 4
  store i32 %63, i32* %3, align 4
  br label %89

64:                                               ; preds = %54
  %65 = load i8*, i8** %10, align 8
  %66 = call i32 @free(i8* %65)
  %67 = load %struct.stab_write_handle*, %struct.stab_write_handle** %6, align 8
  %68 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %67, i32 0, i32 1
  %69 = load i8*, i8** %5, align 8
  %70 = load i32, i32* @TRUE, align 4
  %71 = load i32, i32* @FALSE, align 4
  %72 = call %struct.string_hash_entry* @string_hash_lookup(i32* %68, i8* %69, i32 %70, i32 %71)
  store %struct.string_hash_entry* %72, %struct.string_hash_entry** %11, align 8
  %73 = load %struct.string_hash_entry*, %struct.string_hash_entry** %11, align 8
  %74 = icmp eq %struct.string_hash_entry* %73, null
  br i1 %74, label %75, label %81

75:                                               ; preds = %64
  %76 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %77 = call i32 (...) @bfd_get_error()
  %78 = call i32 @bfd_errmsg(i32 %77)
  %79 = call i32 @non_fatal(i32 %76, i32 %78)
  %80 = load i32, i32* @FALSE, align 4
  store i32 %80, i32* %3, align 4
  br label %89

81:                                               ; preds = %64
  %82 = load i64, i64* %7, align 8
  %83 = load %struct.string_hash_entry*, %struct.string_hash_entry** %11, align 8
  %84 = getelementptr inbounds %struct.string_hash_entry, %struct.string_hash_entry* %83, i32 0, i32 0
  store i64 %82, i64* %84, align 8
  %85 = load i32, i32* %8, align 4
  %86 = load %struct.string_hash_entry*, %struct.string_hash_entry** %11, align 8
  %87 = getelementptr inbounds %struct.string_hash_entry, %struct.string_hash_entry* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 8
  %88 = load i32, i32* @TRUE, align 4
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %81, %75, %62
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i8* @stab_pop_type(%struct.stab_write_handle*) #1

declare dso_local i64 @xmalloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, ...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @stab_write_symbol(%struct.stab_write_handle*, i32, i32, i32, i8*) #1

declare dso_local %struct.string_hash_entry* @string_hash_lookup(i32*, i8*, i32, i32) #1

declare dso_local i32 @non_fatal(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @bfd_errmsg(i32) #1

declare dso_local i32 @bfd_get_error(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
