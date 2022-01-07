; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_pa64solib.c_add_to_solist.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_pa64solib.c_add_to_solist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.so_list = type { i32, i32, i32, %struct.load_module_desc, %struct.so_list* }
%struct.load_module_desc = type { i32 }
%struct.target_ops = type { i32 }

@symfile_objfile = common dso_local global %struct.TYPE_2__* null, align 8
@so_list_head = common dso_local global %struct.so_list* null, align 8
@.str = private unnamed_addr constant [42 x i8] c"Error while reading in dynamic library %s\00", align 1
@pa64_solib_total_st_size = common dso_local global i32 0, align 4
@auto_solib_limit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i32, %struct.load_module_desc*, i32, %struct.target_ops*)* @add_to_solist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_to_solist(i32 %0, i8* %1, i32 %2, %struct.load_module_desc* %3, i32 %4, %struct.target_ops* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.load_module_desc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.target_ops*, align 8
  %13 = alloca %struct.so_list*, align 8
  %14 = alloca %struct.so_list*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.load_module_desc* %3, %struct.load_module_desc** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.target_ops* %5, %struct.target_ops** %12, align 8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @symfile_objfile, align 8
  %18 = icmp eq %struct.TYPE_2__* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %6
  br label %138

20:                                               ; preds = %6
  %21 = load %struct.so_list*, %struct.so_list** @so_list_head, align 8
  store %struct.so_list* %21, %struct.so_list** %14, align 8
  br label %22

22:                                               ; preds = %40, %20
  %23 = load %struct.so_list*, %struct.so_list** %14, align 8
  %24 = icmp ne %struct.so_list* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load %struct.so_list*, %struct.so_list** %14, align 8
  %27 = getelementptr inbounds %struct.so_list, %struct.so_list* %26, i32 0, i32 4
  %28 = load %struct.so_list*, %struct.so_list** %27, align 8
  %29 = icmp ne %struct.so_list* %28, null
  br label %30

30:                                               ; preds = %25, %22
  %31 = phi i1 [ false, %22 ], [ %29, %25 ]
  br i1 %31, label %32, label %44

32:                                               ; preds = %30
  %33 = load %struct.so_list*, %struct.so_list** %14, align 8
  %34 = getelementptr inbounds %struct.so_list, %struct.so_list* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i8*, i8** %8, align 8
  %37 = call i64 @strcmp(i32 %35, i8* %36)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %138

40:                                               ; preds = %32
  %41 = load %struct.so_list*, %struct.so_list** %14, align 8
  %42 = getelementptr inbounds %struct.so_list, %struct.so_list* %41, i32 0, i32 4
  %43 = load %struct.so_list*, %struct.so_list** %42, align 8
  store %struct.so_list* %43, %struct.so_list** %14, align 8
  br label %22

44:                                               ; preds = %30
  %45 = load %struct.so_list*, %struct.so_list** %14, align 8
  %46 = icmp ne %struct.so_list* %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %44
  %48 = load %struct.so_list*, %struct.so_list** %14, align 8
  %49 = getelementptr inbounds %struct.so_list, %struct.so_list* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i8*, i8** %8, align 8
  %52 = call i64 @strcmp(i32 %50, i8* %51)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %138

55:                                               ; preds = %47, %44
  %56 = call i64 @xmalloc(i32 24)
  %57 = inttoptr i64 %56 to %struct.so_list*
  store %struct.so_list* %57, %struct.so_list** %13, align 8
  %58 = load %struct.so_list*, %struct.so_list** %13, align 8
  %59 = bitcast %struct.so_list* %58 to i8*
  %60 = call i32 @memset(i8* %59, i32 0, i32 24)
  %61 = load %struct.so_list*, %struct.so_list** @so_list_head, align 8
  %62 = icmp eq %struct.so_list* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %55
  %64 = load %struct.so_list*, %struct.so_list** %13, align 8
  store %struct.so_list* %64, %struct.so_list** @so_list_head, align 8
  %65 = load %struct.so_list*, %struct.so_list** %13, align 8
  store %struct.so_list* %65, %struct.so_list** %14, align 8
  br label %71

66:                                               ; preds = %55
  %67 = load %struct.so_list*, %struct.so_list** %13, align 8
  %68 = load %struct.so_list*, %struct.so_list** %14, align 8
  %69 = getelementptr inbounds %struct.so_list, %struct.so_list* %68, i32 0, i32 4
  store %struct.so_list* %67, %struct.so_list** %69, align 8
  %70 = load %struct.so_list*, %struct.so_list** %13, align 8
  store %struct.so_list* %70, %struct.so_list** %14, align 8
  br label %71

71:                                               ; preds = %66, %63
  %72 = load %struct.load_module_desc*, %struct.load_module_desc** %10, align 8
  %73 = icmp ne %struct.load_module_desc* %72, null
  br i1 %73, label %74, label %80

74:                                               ; preds = %71
  %75 = load %struct.so_list*, %struct.so_list** %13, align 8
  %76 = getelementptr inbounds %struct.so_list, %struct.so_list* %75, i32 0, i32 3
  %77 = load %struct.load_module_desc*, %struct.load_module_desc** %10, align 8
  %78 = bitcast %struct.load_module_desc* %76 to i8*
  %79 = bitcast %struct.load_module_desc* %77 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %78, i8* align 4 %79, i64 4, i1 false)
  br label %91

80:                                               ; preds = %71
  %81 = load i32, i32* %11, align 4
  %82 = load %struct.so_list*, %struct.so_list** %13, align 8
  %83 = getelementptr inbounds %struct.so_list, %struct.so_list* %82, i32 0, i32 3
  %84 = bitcast %struct.load_module_desc* %83 to i8*
  %85 = call i64 @target_read_memory(i32 %81, i8* %84, i32 4)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %80
  %88 = load i8*, i8** %8, align 8
  %89 = call i32 @error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %88)
  br label %90

90:                                               ; preds = %87, %80
  br label %91

91:                                               ; preds = %90, %74
  %92 = load i32, i32* %11, align 4
  %93 = load %struct.so_list*, %struct.so_list** %13, align 8
  %94 = getelementptr inbounds %struct.so_list, %struct.so_list* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 8
  %95 = load %struct.so_list*, %struct.so_list** %13, align 8
  %96 = getelementptr inbounds %struct.so_list, %struct.so_list* %95, i32 0, i32 0
  store i32 1, i32* %96, align 8
  %97 = load i8*, i8** %8, align 8
  %98 = load i8*, i8** %8, align 8
  %99 = call i32 @strlen(i8* %98)
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** @symfile_objfile, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = call i32 @obsavestring(i8* %97, i32 %99, i32* %101)
  %103 = load %struct.so_list*, %struct.so_list** %13, align 8
  %104 = getelementptr inbounds %struct.so_list, %struct.so_list* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  %105 = load i8*, i8** %8, align 8
  %106 = call i32 @pa64_solib_sizeof_symbol_table(i8* %105)
  store i32 %106, i32* %16, align 4
  %107 = load i32, i32* %7, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %119, label %109

109:                                              ; preds = %91
  %110 = load i32, i32* %9, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %109
  %113 = load i32, i32* %16, align 4
  %114 = load i32, i32* @pa64_solib_total_st_size, align 4
  %115 = add nsw i32 %113, %114
  %116 = load i32, i32* @auto_solib_limit, align 4
  %117 = mul nsw i32 %116, 1048576
  %118 = icmp sgt i32 %115, %117
  br label %119

119:                                              ; preds = %112, %109, %91
  %120 = phi i1 [ false, %109 ], [ false, %91 ], [ %118, %112 ]
  %121 = zext i1 %120 to i32
  store i32 %121, i32* %15, align 4
  %122 = load i32, i32* %15, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %119
  %125 = load %struct.so_list*, %struct.so_list** %13, align 8
  %126 = load i8*, i8** %8, align 8
  %127 = load i32, i32* %7, align 4
  %128 = call i32 @pa64_solib_add_solib_objfile(%struct.so_list* %125, i8* %126, i32 %127, i32 1)
  br label %138

129:                                              ; preds = %119
  %130 = load i32, i32* %16, align 4
  %131 = load i32, i32* @pa64_solib_total_st_size, align 4
  %132 = add nsw i32 %131, %130
  store i32 %132, i32* @pa64_solib_total_st_size, align 4
  %133 = load %struct.so_list*, %struct.so_list** %13, align 8
  %134 = load i8*, i8** %8, align 8
  %135 = load i32, i32* %7, align 4
  %136 = load %struct.target_ops*, %struct.target_ops** %12, align 8
  %137 = call i32 @pa64_solib_load_symbols(%struct.so_list* %133, i8* %134, i32 %135, i32 0, %struct.target_ops* %136)
  br label %138

138:                                              ; preds = %129, %124, %54, %39, %19
  ret void
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @target_read_memory(i32, i8*, i32) #1

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local i32 @obsavestring(i8*, i32, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @pa64_solib_sizeof_symbol_table(i8*) #1

declare dso_local i32 @pa64_solib_add_solib_objfile(%struct.so_list*, i8*, i32, i32) #1

declare dso_local i32 @pa64_solib_load_symbols(%struct.so_list*, i8*, i32, i32, %struct.target_ops*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
