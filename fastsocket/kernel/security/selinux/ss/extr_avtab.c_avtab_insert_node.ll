; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_avtab.c_avtab_insert_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_avtab.c_avtab_insert_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.avtab = type { i32, %struct.avtab_node** }
%struct.avtab_node = type { %struct.avtab_node*, %struct.avtab_datum, %struct.avtab_key }
%struct.avtab_datum = type { i32 }
%struct.avtab_key = type { i32 }

@avtab_node_cachep = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.avtab_node* (%struct.avtab*, i32, %struct.avtab_node*, %struct.avtab_node*, %struct.avtab_key*, %struct.avtab_datum*)* @avtab_insert_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.avtab_node* @avtab_insert_node(%struct.avtab* %0, i32 %1, %struct.avtab_node* %2, %struct.avtab_node* %3, %struct.avtab_key* %4, %struct.avtab_datum* %5) #0 {
  %7 = alloca %struct.avtab_node*, align 8
  %8 = alloca %struct.avtab*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.avtab_node*, align 8
  %11 = alloca %struct.avtab_node*, align 8
  %12 = alloca %struct.avtab_key*, align 8
  %13 = alloca %struct.avtab_datum*, align 8
  %14 = alloca %struct.avtab_node*, align 8
  store %struct.avtab* %0, %struct.avtab** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.avtab_node* %2, %struct.avtab_node** %10, align 8
  store %struct.avtab_node* %3, %struct.avtab_node** %11, align 8
  store %struct.avtab_key* %4, %struct.avtab_key** %12, align 8
  store %struct.avtab_datum* %5, %struct.avtab_datum** %13, align 8
  %15 = load i32, i32* @avtab_node_cachep, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.avtab_node* @kmem_cache_zalloc(i32 %15, i32 %16)
  store %struct.avtab_node* %17, %struct.avtab_node** %14, align 8
  %18 = load %struct.avtab_node*, %struct.avtab_node** %14, align 8
  %19 = icmp eq %struct.avtab_node* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %6
  store %struct.avtab_node* null, %struct.avtab_node** %7, align 8
  br label %66

21:                                               ; preds = %6
  %22 = load %struct.avtab_node*, %struct.avtab_node** %14, align 8
  %23 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %22, i32 0, i32 2
  %24 = load %struct.avtab_key*, %struct.avtab_key** %12, align 8
  %25 = bitcast %struct.avtab_key* %23 to i8*
  %26 = bitcast %struct.avtab_key* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 4 %26, i64 4, i1 false)
  %27 = load %struct.avtab_node*, %struct.avtab_node** %14, align 8
  %28 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %27, i32 0, i32 1
  %29 = load %struct.avtab_datum*, %struct.avtab_datum** %13, align 8
  %30 = bitcast %struct.avtab_datum* %28 to i8*
  %31 = bitcast %struct.avtab_datum* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 4 %31, i64 4, i1 false)
  %32 = load %struct.avtab_node*, %struct.avtab_node** %10, align 8
  %33 = icmp ne %struct.avtab_node* %32, null
  br i1 %33, label %34, label %43

34:                                               ; preds = %21
  %35 = load %struct.avtab_node*, %struct.avtab_node** %10, align 8
  %36 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %35, i32 0, i32 0
  %37 = load %struct.avtab_node*, %struct.avtab_node** %36, align 8
  %38 = load %struct.avtab_node*, %struct.avtab_node** %14, align 8
  %39 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %38, i32 0, i32 0
  store %struct.avtab_node* %37, %struct.avtab_node** %39, align 8
  %40 = load %struct.avtab_node*, %struct.avtab_node** %14, align 8
  %41 = load %struct.avtab_node*, %struct.avtab_node** %10, align 8
  %42 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %41, i32 0, i32 0
  store %struct.avtab_node* %40, %struct.avtab_node** %42, align 8
  br label %60

43:                                               ; preds = %21
  %44 = load %struct.avtab*, %struct.avtab** %8, align 8
  %45 = getelementptr inbounds %struct.avtab, %struct.avtab* %44, i32 0, i32 1
  %46 = load %struct.avtab_node**, %struct.avtab_node*** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.avtab_node*, %struct.avtab_node** %46, i64 %48
  %50 = load %struct.avtab_node*, %struct.avtab_node** %49, align 8
  %51 = load %struct.avtab_node*, %struct.avtab_node** %14, align 8
  %52 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %51, i32 0, i32 0
  store %struct.avtab_node* %50, %struct.avtab_node** %52, align 8
  %53 = load %struct.avtab_node*, %struct.avtab_node** %14, align 8
  %54 = load %struct.avtab*, %struct.avtab** %8, align 8
  %55 = getelementptr inbounds %struct.avtab, %struct.avtab* %54, i32 0, i32 1
  %56 = load %struct.avtab_node**, %struct.avtab_node*** %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.avtab_node*, %struct.avtab_node** %56, i64 %58
  store %struct.avtab_node* %53, %struct.avtab_node** %59, align 8
  br label %60

60:                                               ; preds = %43, %34
  %61 = load %struct.avtab*, %struct.avtab** %8, align 8
  %62 = getelementptr inbounds %struct.avtab, %struct.avtab* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 8
  %65 = load %struct.avtab_node*, %struct.avtab_node** %14, align 8
  store %struct.avtab_node* %65, %struct.avtab_node** %7, align 8
  br label %66

66:                                               ; preds = %60, %20
  %67 = load %struct.avtab_node*, %struct.avtab_node** %7, align 8
  ret %struct.avtab_node* %67
}

declare dso_local %struct.avtab_node* @kmem_cache_zalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
