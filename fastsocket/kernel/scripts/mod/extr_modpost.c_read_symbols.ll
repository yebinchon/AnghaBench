; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/mod/extr_modpost.c_read_symbols.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/mod/extr_modpost.c_read_symbols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { i32, i32, i32, i32 }
%struct.elf_info = type { i8*, i64, i64, i32, %struct.TYPE_4__*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@have_vmlinux = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"license\00", align 1
@.str.1 = private unnamed_addr constant [89 x i8] c"modpost: missing MODULE_LICENSE() in %s\0Asee include/linux/module.h for more information\0A\00", align 1
@vmlinux_section_warnings = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@all_versions = common dso_local global i64 0, align 8
@modversions = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"module_layout\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @read_symbols to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_symbols(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.module*, align 8
  %7 = alloca %struct.elf_info, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %2, align 8
  %9 = bitcast %struct.elf_info* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 48, i1 false)
  %10 = load i8*, i8** %2, align 8
  %11 = call i32 @parse_elf(%struct.elf_info* %7, i8* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %156

14:                                               ; preds = %1
  %15 = load i8*, i8** %2, align 8
  %16 = call %struct.module* @new_module(i8* %15)
  store %struct.module* %16, %struct.module** %6, align 8
  %17 = load i8*, i8** %2, align 8
  %18 = call i64 @is_vmlinux(i8* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  store i32 1, i32* @have_vmlinux, align 4
  %21 = load %struct.module*, %struct.module** %6, align 8
  %22 = getelementptr inbounds %struct.module, %struct.module* %21, i32 0, i32 0
  store i32 1, i32* %22, align 4
  br label %23

23:                                               ; preds = %20, %14
  %24 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %7, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %7, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = call i8* @get_modinfo(i64 %25, i32 %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i8* %28, i8** %5, align 8
  %29 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %7, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %23
  %33 = load i8*, i8** %5, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %42, label %35

35:                                               ; preds = %32
  %36 = load i8*, i8** %2, align 8
  %37 = call i64 @is_vmlinux(i8* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = load i8*, i8** %2, align 8
  %41 = call i32 @warn(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.1, i64 0, i64 0), i8* %40)
  br label %42

42:                                               ; preds = %39, %35, %32, %23
  br label %43

43:                                               ; preds = %56, %42
  %44 = load i8*, i8** %5, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %63

46:                                               ; preds = %43
  %47 = load i8*, i8** %5, align 8
  %48 = call i64 @license_is_gpl_compatible(i8* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load %struct.module*, %struct.module** %6, align 8
  %52 = getelementptr inbounds %struct.module, %struct.module* %51, i32 0, i32 1
  store i32 1, i32* %52, align 4
  br label %56

53:                                               ; preds = %46
  %54 = load %struct.module*, %struct.module** %6, align 8
  %55 = getelementptr inbounds %struct.module, %struct.module* %54, i32 0, i32 1
  store i32 0, i32* %55, align 4
  br label %63

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %7, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %7, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = load i8*, i8** %5, align 8
  %62 = call i8* @get_next_modinfo(i64 %58, i32 %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %61)
  store i8* %62, i8** %5, align 8
  br label %43

63:                                               ; preds = %53, %43
  %64 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %7, i32 0, i32 5
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  store %struct.TYPE_4__* %65, %struct.TYPE_4__** %8, align 8
  br label %66

66:                                               ; preds = %87, %63
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %68 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %7, i32 0, i32 4
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = icmp ult %struct.TYPE_4__* %67, %69
  br i1 %70, label %71, label %90

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %7, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %73, i64 %77
  store i8* %78, i8** %3, align 8
  %79 = load %struct.module*, %struct.module** %6, align 8
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %81 = load i8*, i8** %3, align 8
  %82 = call i32 @handle_modversions(%struct.module* %79, %struct.elf_info* %7, %struct.TYPE_4__* %80, i8* %81)
  %83 = load %struct.module*, %struct.module** %6, align 8
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %85 = load i8*, i8** %3, align 8
  %86 = call i32 @handle_moddevtable(%struct.module* %83, %struct.elf_info* %7, %struct.TYPE_4__* %84, i8* %85)
  br label %87

87:                                               ; preds = %71
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 1
  store %struct.TYPE_4__* %89, %struct.TYPE_4__** %8, align 8
  br label %66

90:                                               ; preds = %66
  %91 = load i8*, i8** %2, align 8
  %92 = call i64 @is_vmlinux(i8* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %90
  %95 = load i8*, i8** %2, align 8
  %96 = call i64 @is_vmlinux(i8* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %94
  %99 = load i64, i64* @vmlinux_section_warnings, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %98, %90
  %102 = load %struct.module*, %struct.module** %6, align 8
  %103 = load i8*, i8** %2, align 8
  %104 = call i32 @check_sec_ref(%struct.module* %102, i8* %103, %struct.elf_info* %7)
  br label %105

105:                                              ; preds = %101, %98, %94
  %106 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %7, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %7, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = call i8* @get_modinfo(i64 %107, i32 %109, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i8* %110, i8** %4, align 8
  %111 = load i8*, i8** %4, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %113, label %127

113:                                              ; preds = %105
  %114 = load i8*, i8** %2, align 8
  %115 = load i8*, i8** %4, align 8
  %116 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %7, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = load i8*, i8** %4, align 8
  %119 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %7, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = inttoptr i64 %120 to i8*
  %122 = ptrtoint i8* %118 to i64
  %123 = ptrtoint i8* %121 to i64
  %124 = sub i64 %122, %123
  %125 = trunc i64 %124 to i32
  %126 = call i32 @maybe_frob_rcs_version(i8* %114, i8* %115, i64 %117, i32 %125)
  br label %127

127:                                              ; preds = %113, %105
  %128 = load i8*, i8** %4, align 8
  %129 = icmp ne i8* %128, null
  br i1 %129, label %137, label %130

130:                                              ; preds = %127
  %131 = load i64, i64* @all_versions, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %143

133:                                              ; preds = %130
  %134 = load i8*, i8** %2, align 8
  %135 = call i64 @is_vmlinux(i8* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %143, label %137

137:                                              ; preds = %133, %127
  %138 = load i8*, i8** %2, align 8
  %139 = load %struct.module*, %struct.module** %6, align 8
  %140 = getelementptr inbounds %struct.module, %struct.module* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @get_src_version(i8* %138, i32 %141, i32 3)
  br label %143

143:                                              ; preds = %137, %133, %130
  %144 = load %struct.module*, %struct.module** %6, align 8
  %145 = call i32 @get_markers(%struct.elf_info* %7, %struct.module* %144)
  %146 = call i32 @parse_elf_finish(%struct.elf_info* %7)
  %147 = load i64, i64* @modversions, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %156

149:                                              ; preds = %143
  %150 = load %struct.module*, %struct.module** %6, align 8
  %151 = getelementptr inbounds %struct.module, %struct.module* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @alloc_symbol(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 0, i32 %152)
  %154 = load %struct.module*, %struct.module** %6, align 8
  %155 = getelementptr inbounds %struct.module, %struct.module* %154, i32 0, i32 2
  store i32 %153, i32* %155, align 4
  br label %156

156:                                              ; preds = %13, %149, %143
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @parse_elf(%struct.elf_info*, i8*) #2

declare dso_local %struct.module* @new_module(i8*) #2

declare dso_local i64 @is_vmlinux(i8*) #2

declare dso_local i8* @get_modinfo(i64, i32, i8*) #2

declare dso_local i32 @warn(i8*, i8*) #2

declare dso_local i64 @license_is_gpl_compatible(i8*) #2

declare dso_local i8* @get_next_modinfo(i64, i32, i8*, i8*) #2

declare dso_local i32 @handle_modversions(%struct.module*, %struct.elf_info*, %struct.TYPE_4__*, i8*) #2

declare dso_local i32 @handle_moddevtable(%struct.module*, %struct.elf_info*, %struct.TYPE_4__*, i8*) #2

declare dso_local i32 @check_sec_ref(%struct.module*, i8*, %struct.elf_info*) #2

declare dso_local i32 @maybe_frob_rcs_version(i8*, i8*, i64, i32) #2

declare dso_local i32 @get_src_version(i8*, i32, i32) #2

declare dso_local i32 @get_markers(%struct.elf_info*, %struct.module*) #2

declare dso_local i32 @parse_elf_finish(%struct.elf_info*) #2

declare dso_local i32 @alloc_symbol(i8*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
