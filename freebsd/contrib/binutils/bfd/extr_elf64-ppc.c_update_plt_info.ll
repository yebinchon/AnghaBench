; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-ppc.c_update_plt_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-ppc.c_update_plt_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppc_link_hash_entry = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_6__ = type { %struct.plt_entry* }
%struct.plt_entry = type { i64, %struct.TYPE_7__, %struct.plt_entry* }
%struct.TYPE_7__ = type { i64 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.ppc_link_hash_entry*, i64)* @update_plt_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_plt_info(i32* %0, %struct.ppc_link_hash_entry* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ppc_link_hash_entry*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.plt_entry*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.ppc_link_hash_entry* %1, %struct.ppc_link_hash_entry** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %6, align 8
  %11 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.plt_entry*, %struct.plt_entry** %13, align 8
  store %struct.plt_entry* %14, %struct.plt_entry** %8, align 8
  br label %15

15:                                               ; preds = %26, %3
  %16 = load %struct.plt_entry*, %struct.plt_entry** %8, align 8
  %17 = icmp ne %struct.plt_entry* %16, null
  br i1 %17, label %18, label %30

18:                                               ; preds = %15
  %19 = load %struct.plt_entry*, %struct.plt_entry** %8, align 8
  %20 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %7, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %30

25:                                               ; preds = %18
  br label %26

26:                                               ; preds = %25
  %27 = load %struct.plt_entry*, %struct.plt_entry** %8, align 8
  %28 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %27, i32 0, i32 2
  %29 = load %struct.plt_entry*, %struct.plt_entry** %28, align 8
  store %struct.plt_entry* %29, %struct.plt_entry** %8, align 8
  br label %15

30:                                               ; preds = %24, %15
  %31 = load %struct.plt_entry*, %struct.plt_entry** %8, align 8
  %32 = icmp eq %struct.plt_entry* %31, null
  br i1 %32, label %33, label %60

33:                                               ; preds = %30
  store i32 24, i32* %9, align 4
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call %struct.plt_entry* @bfd_alloc(i32* %34, i32 %35)
  store %struct.plt_entry* %36, %struct.plt_entry** %8, align 8
  %37 = load %struct.plt_entry*, %struct.plt_entry** %8, align 8
  %38 = icmp eq %struct.plt_entry* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @FALSE, align 4
  store i32 %40, i32* %4, align 4
  br label %95

41:                                               ; preds = %33
  %42 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %6, align 8
  %43 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load %struct.plt_entry*, %struct.plt_entry** %45, align 8
  %47 = load %struct.plt_entry*, %struct.plt_entry** %8, align 8
  %48 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %47, i32 0, i32 2
  store %struct.plt_entry* %46, %struct.plt_entry** %48, align 8
  %49 = load i64, i64* %7, align 8
  %50 = load %struct.plt_entry*, %struct.plt_entry** %8, align 8
  %51 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load %struct.plt_entry*, %struct.plt_entry** %8, align 8
  %53 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  store i64 0, i64* %54, align 8
  %55 = load %struct.plt_entry*, %struct.plt_entry** %8, align 8
  %56 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %6, align 8
  %57 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  store %struct.plt_entry* %55, %struct.plt_entry** %59, align 8
  br label %60

60:                                               ; preds = %41, %30
  %61 = load %struct.plt_entry*, %struct.plt_entry** %8, align 8
  %62 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %64, 1
  store i64 %65, i64* %63, align 8
  %66 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %6, align 8
  %67 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  store i32 1, i32* %68, align 8
  %69 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %6, align 8
  %70 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 0
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 46
  br i1 %78, label %79, label %93

79:                                               ; preds = %60
  %80 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %6, align 8
  %81 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 1
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %79
  %91 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %6, align 8
  %92 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %91, i32 0, i32 0
  store i32 1, i32* %92, align 8
  br label %93

93:                                               ; preds = %90, %79, %60
  %94 = load i32, i32* @TRUE, align 4
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %93, %39
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local %struct.plt_entry* @bfd_alloc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
