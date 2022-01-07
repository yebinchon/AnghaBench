; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-ppc.c_add_stub_sym.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-ppc.c_add_stub_sym.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.plt_entry = type { i32, %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { i8* }
%struct.elf_link_hash_entry = type { i32, i32, i32, i32, i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i8* }
%struct.bfd_link_info = type { i64, i64 }
%struct.ppc_elf_link_hash_table = type { i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c".plt_pic32.\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c".plt_call32.\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"%08x\00", align 1
@TRUE = common dso_local global i32 0, align 4
@bfd_link_hash_new = common dso_local global i64 0, align 8
@bfd_link_hash_defined = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.plt_entry*, %struct.elf_link_hash_entry*, %struct.bfd_link_info*)* @add_stub_sym to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_stub_sym(%struct.plt_entry* %0, %struct.elf_link_hash_entry* %1, %struct.bfd_link_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.plt_entry*, align 8
  %6 = alloca %struct.elf_link_hash_entry*, align 8
  %7 = alloca %struct.bfd_link_info*, align 8
  %8 = alloca %struct.elf_link_hash_entry*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.ppc_elf_link_hash_table*, align 8
  store %struct.plt_entry* %0, %struct.plt_entry** %5, align 8
  store %struct.elf_link_hash_entry* %1, %struct.elf_link_hash_entry** %6, align 8
  store %struct.bfd_link_info* %2, %struct.bfd_link_info** %7, align 8
  %15 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %16 = call %struct.ppc_elf_link_hash_table* @ppc_elf_hash_table(%struct.bfd_link_info* %15)
  store %struct.ppc_elf_link_hash_table* %16, %struct.ppc_elf_link_hash_table** %14, align 8
  %17 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %18 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %3
  %22 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %23 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21, %3
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  br label %28

27:                                               ; preds = %21
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %13, align 8
  br label %28

28:                                               ; preds = %27, %26
  %29 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %6, align 8
  %30 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %29, i32 0, i32 5
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i64 @strlen(i8* %33)
  store i64 %34, i64* %9, align 8
  %35 = load i8*, i8** %13, align 8
  %36 = call i64 @strlen(i8* %35)
  store i64 %36, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %37 = load %struct.plt_entry*, %struct.plt_entry** %5, align 8
  %38 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %37, i32 0, i32 1
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = icmp ne %struct.TYPE_6__* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %28
  %42 = load %struct.plt_entry*, %struct.plt_entry** %5, align 8
  %43 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %42, i32 0, i32 1
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i64 @strlen(i8* %46)
  store i64 %47, i64* %11, align 8
  br label %48

48:                                               ; preds = %41, %28
  %49 = load i64, i64* %9, align 8
  %50 = load i64, i64* %10, align 8
  %51 = add i64 %49, %50
  %52 = load i64, i64* %11, align 8
  %53 = add i64 %51, %52
  %54 = add i64 %53, 9
  %55 = call i8* @bfd_malloc(i64 %54)
  store i8* %55, i8** %12, align 8
  %56 = load i8*, i8** %12, align 8
  %57 = icmp eq i8* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %48
  %59 = load i32, i32* @FALSE, align 4
  store i32 %59, i32* %4, align 4
  br label %154

60:                                               ; preds = %48
  %61 = load i8*, i8** %12, align 8
  %62 = load %struct.plt_entry*, %struct.plt_entry** %5, align 8
  %63 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = trunc i64 %64 to i32
  %66 = call i32 @sprintf(i8* %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  %67 = load %struct.plt_entry*, %struct.plt_entry** %5, align 8
  %68 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %67, i32 0, i32 1
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = icmp ne %struct.TYPE_6__* %69, null
  br i1 %70, label %71, label %81

71:                                               ; preds = %60
  %72 = load i8*, i8** %12, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 8
  %74 = load %struct.plt_entry*, %struct.plt_entry** %5, align 8
  %75 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %74, i32 0, i32 1
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = load i64, i64* %11, align 8
  %80 = call i32 @memcpy(i8* %73, i8* %78, i64 %79)
  br label %81

81:                                               ; preds = %71, %60
  %82 = load i8*, i8** %12, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 8
  %84 = load i64, i64* %11, align 8
  %85 = getelementptr inbounds i8, i8* %83, i64 %84
  %86 = load i8*, i8** %13, align 8
  %87 = load i64, i64* %10, align 8
  %88 = call i32 @memcpy(i8* %85, i8* %86, i64 %87)
  %89 = load i8*, i8** %12, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 8
  %91 = load i64, i64* %11, align 8
  %92 = getelementptr inbounds i8, i8* %90, i64 %91
  %93 = load i64, i64* %10, align 8
  %94 = getelementptr inbounds i8, i8* %92, i64 %93
  %95 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %6, align 8
  %96 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %95, i32 0, i32 5
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = load i64, i64* %9, align 8
  %101 = add i64 %100, 1
  %102 = call i32 @memcpy(i8* %94, i8* %99, i64 %101)
  %103 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %14, align 8
  %104 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %103, i32 0, i32 1
  %105 = load i8*, i8** %12, align 8
  %106 = load i32, i32* @TRUE, align 4
  %107 = load i32, i32* @FALSE, align 4
  %108 = load i32, i32* @FALSE, align 4
  %109 = call %struct.elf_link_hash_entry* @elf_link_hash_lookup(i32* %104, i8* %105, i32 %106, i32 %107, i32 %108)
  store %struct.elf_link_hash_entry* %109, %struct.elf_link_hash_entry** %8, align 8
  %110 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %8, align 8
  %111 = icmp eq %struct.elf_link_hash_entry* %110, null
  br i1 %111, label %112, label %114

112:                                              ; preds = %81
  %113 = load i32, i32* @FALSE, align 4
  store i32 %113, i32* %4, align 4
  br label %154

114:                                              ; preds = %81
  %115 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %8, align 8
  %116 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %115, i32 0, i32 5
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @bfd_link_hash_new, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %152

121:                                              ; preds = %114
  %122 = load i64, i64* @bfd_link_hash_defined, align 8
  %123 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %8, align 8
  %124 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %123, i32 0, i32 5
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 0
  store i64 %122, i64* %125, align 8
  %126 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %14, align 8
  %127 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %8, align 8
  %130 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %129, i32 0, i32 5
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 1
  store i32 %128, i32* %133, align 4
  %134 = load %struct.plt_entry*, %struct.plt_entry** %5, align 8
  %135 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %8, align 8
  %138 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %137, i32 0, i32 5
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  store i32 %136, i32* %141, align 8
  %142 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %8, align 8
  %143 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %142, i32 0, i32 0
  store i32 1, i32* %143, align 8
  %144 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %8, align 8
  %145 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %144, i32 0, i32 1
  store i32 1, i32* %145, align 4
  %146 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %8, align 8
  %147 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %146, i32 0, i32 2
  store i32 1, i32* %147, align 8
  %148 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %8, align 8
  %149 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %148, i32 0, i32 3
  store i32 1, i32* %149, align 4
  %150 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %8, align 8
  %151 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %150, i32 0, i32 4
  store i64 0, i64* %151, align 8
  br label %152

152:                                              ; preds = %121, %114
  %153 = load i32, i32* @TRUE, align 4
  store i32 %153, i32* %4, align 4
  br label %154

154:                                              ; preds = %152, %112, %58
  %155 = load i32, i32* %4, align 4
  ret i32 %155
}

declare dso_local %struct.ppc_elf_link_hash_table* @ppc_elf_hash_table(%struct.bfd_link_info*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @bfd_malloc(i64) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local %struct.elf_link_hash_entry* @elf_link_hash_lookup(i32*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
