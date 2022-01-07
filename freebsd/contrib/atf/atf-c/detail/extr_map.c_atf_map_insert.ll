; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/detail/extr_map.c_atf_map_insert.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/detail/extr_map.c_atf_map_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.map_entry = type { i32, i8*, i32 }
%struct.TYPE_9__ = type { %struct.map_entry* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atf_map_insert(%struct.TYPE_8__* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.map_entry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_9__, align 8
  %12 = alloca %struct.TYPE_9__, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call %struct.map_entry* @atf_map_find(%struct.TYPE_8__* %13, i8* %14)
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  store %struct.map_entry* %15, %struct.map_entry** %16, align 8
  %17 = bitcast %struct.TYPE_9__* %11 to i8*
  %18 = bitcast %struct.TYPE_9__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 8, i1 false)
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %20 = call i32 @atf_map_end(%struct.TYPE_8__* %19)
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %22 = load %struct.map_entry*, %struct.map_entry** %21, align 8
  %23 = call i64 @atf_equal_map_iter_map_iter(%struct.map_entry* %22, i32 %20)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %51

25:                                               ; preds = %4
  %26 = load i8*, i8** %6, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call %struct.map_entry* @new_entry(i8* %26, i8* %27, i32 %28)
  store %struct.map_entry* %29, %struct.map_entry** %9, align 8
  %30 = load %struct.map_entry*, %struct.map_entry** %9, align 8
  %31 = icmp eq %struct.map_entry* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = call i32 (...) @atf_no_memory_error()
  store i32 %33, i32* %10, align 4
  br label %50

34:                                               ; preds = %25
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load %struct.map_entry*, %struct.map_entry** %9, align 8
  %38 = call i32 @atf_list_append(i32* %36, %struct.map_entry* %37, i32 0)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = call i64 @atf_is_error(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %34
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 @free(i8* %46)
  br label %48

48:                                               ; preds = %45, %42
  br label %49

49:                                               ; preds = %48, %34
  br label %50

50:                                               ; preds = %49, %32
  br label %79

51:                                               ; preds = %4
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %53 = load %struct.map_entry*, %struct.map_entry** %52, align 8
  store %struct.map_entry* %53, %struct.map_entry** %9, align 8
  %54 = load %struct.map_entry*, %struct.map_entry** %9, align 8
  %55 = getelementptr inbounds %struct.map_entry, %struct.map_entry* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %51
  %59 = load %struct.map_entry*, %struct.map_entry** %9, align 8
  %60 = getelementptr inbounds %struct.map_entry, %struct.map_entry* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @free(i8* %61)
  br label %63

63:                                               ; preds = %58, %51
  %64 = load %struct.map_entry*, %struct.map_entry** %9, align 8
  %65 = getelementptr inbounds %struct.map_entry, %struct.map_entry* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load i8*, i8** %6, align 8
  %68 = call i64 @strcmp(i32 %66, i8* %67)
  %69 = icmp eq i64 %68, 0
  %70 = zext i1 %69 to i32
  %71 = call i32 @INV(i32 %70)
  %72 = load i8*, i8** %7, align 8
  %73 = load %struct.map_entry*, %struct.map_entry** %9, align 8
  %74 = getelementptr inbounds %struct.map_entry, %struct.map_entry* %73, i32 0, i32 1
  store i8* %72, i8** %74, align 8
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.map_entry*, %struct.map_entry** %9, align 8
  %77 = getelementptr inbounds %struct.map_entry, %struct.map_entry* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = call i32 (...) @atf_no_error()
  store i32 %78, i32* %10, align 4
  br label %79

79:                                               ; preds = %63, %50
  %80 = load i32, i32* %10, align 4
  ret i32 %80
}

declare dso_local %struct.map_entry* @atf_map_find(%struct.TYPE_8__*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @atf_equal_map_iter_map_iter(%struct.map_entry*, i32) #1

declare dso_local i32 @atf_map_end(%struct.TYPE_8__*) #1

declare dso_local %struct.map_entry* @new_entry(i8*, i8*, i32) #1

declare dso_local i32 @atf_no_memory_error(...) #1

declare dso_local i32 @atf_list_append(i32*, %struct.map_entry*, i32) #1

declare dso_local i64 @atf_is_error(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @INV(i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @atf_no_error(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
