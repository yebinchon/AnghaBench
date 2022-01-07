; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/cluster/extr_nodemanager.c_o2nm_node_num_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/cluster/extr_nodemanager.c_o2nm_node_num_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.o2nm_node = type { i64, i32 }
%struct.o2nm_cluster = type { i32, i32, %struct.o2nm_node** }

@EINVAL = common dso_local global i64 0, align 8
@O2NM_MAX_NODES = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i64 0, align 8
@O2NM_NODE_ATTR_ADDRESS = common dso_local global i32 0, align 4
@O2NM_NODE_ATTR_PORT = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.o2nm_node*, i8*, i64)* @o2nm_node_num_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @o2nm_node_num_write(%struct.o2nm_node* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.o2nm_node*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.o2nm_cluster*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store %struct.o2nm_node* %0, %struct.o2nm_node** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.o2nm_node*, %struct.o2nm_node** %5, align 8
  %12 = call %struct.o2nm_cluster* @to_o2nm_cluster_from_node(%struct.o2nm_node* %11)
  store %struct.o2nm_cluster* %12, %struct.o2nm_cluster** %8, align 8
  %13 = load i8*, i8** %6, align 8
  store i8* %13, i8** %10, align 8
  %14 = load i8*, i8** %10, align 8
  %15 = call i64 @simple_strtoul(i8* %14, i8** %10, i32 0)
  store i64 %15, i64* %9, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %28

18:                                               ; preds = %3
  %19 = load i8*, i8** %10, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = load i8*, i8** %10, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 10
  br i1 %27, label %28, label %31

28:                                               ; preds = %23, %3
  %29 = load i64, i64* @EINVAL, align 8
  %30 = sub i64 0, %29
  store i64 %30, i64* %4, align 8
  br label %91

31:                                               ; preds = %23, %18
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* @O2NM_MAX_NODES, align 8
  %34 = icmp uge i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i64, i64* @ERANGE, align 8
  %37 = sub i64 0, %36
  store i64 %37, i64* %4, align 8
  br label %91

38:                                               ; preds = %31
  %39 = load i32, i32* @O2NM_NODE_ATTR_ADDRESS, align 4
  %40 = load %struct.o2nm_node*, %struct.o2nm_node** %5, align 8
  %41 = getelementptr inbounds %struct.o2nm_node, %struct.o2nm_node* %40, i32 0, i32 1
  %42 = call i32 @test_bit(i32 %39, i32* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = load i32, i32* @O2NM_NODE_ATTR_PORT, align 4
  %46 = load %struct.o2nm_node*, %struct.o2nm_node** %5, align 8
  %47 = getelementptr inbounds %struct.o2nm_node, %struct.o2nm_node* %46, i32 0, i32 1
  %48 = call i32 @test_bit(i32 %45, i32* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %44, %38
  %51 = load i64, i64* @EINVAL, align 8
  %52 = sub i64 0, %51
  store i64 %52, i64* %4, align 8
  br label %91

53:                                               ; preds = %44
  %54 = load %struct.o2nm_cluster*, %struct.o2nm_cluster** %8, align 8
  %55 = getelementptr inbounds %struct.o2nm_cluster, %struct.o2nm_cluster* %54, i32 0, i32 0
  %56 = call i32 @write_lock(i32* %55)
  %57 = load %struct.o2nm_cluster*, %struct.o2nm_cluster** %8, align 8
  %58 = getelementptr inbounds %struct.o2nm_cluster, %struct.o2nm_cluster* %57, i32 0, i32 2
  %59 = load %struct.o2nm_node**, %struct.o2nm_node*** %58, align 8
  %60 = load i64, i64* %9, align 8
  %61 = getelementptr inbounds %struct.o2nm_node*, %struct.o2nm_node** %59, i64 %60
  %62 = load %struct.o2nm_node*, %struct.o2nm_node** %61, align 8
  %63 = icmp ne %struct.o2nm_node* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %53
  store i8* null, i8** %10, align 8
  br label %80

65:                                               ; preds = %53
  %66 = load %struct.o2nm_node*, %struct.o2nm_node** %5, align 8
  %67 = load %struct.o2nm_cluster*, %struct.o2nm_cluster** %8, align 8
  %68 = getelementptr inbounds %struct.o2nm_cluster, %struct.o2nm_cluster* %67, i32 0, i32 2
  %69 = load %struct.o2nm_node**, %struct.o2nm_node*** %68, align 8
  %70 = load i64, i64* %9, align 8
  %71 = getelementptr inbounds %struct.o2nm_node*, %struct.o2nm_node** %69, i64 %70
  store %struct.o2nm_node* %66, %struct.o2nm_node** %71, align 8
  %72 = load i64, i64* %9, align 8
  %73 = load %struct.o2nm_node*, %struct.o2nm_node** %5, align 8
  %74 = getelementptr inbounds %struct.o2nm_node, %struct.o2nm_node* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  %75 = load i64, i64* %9, align 8
  %76 = load %struct.o2nm_cluster*, %struct.o2nm_cluster** %8, align 8
  %77 = getelementptr inbounds %struct.o2nm_cluster, %struct.o2nm_cluster* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @set_bit(i64 %75, i32 %78)
  br label %80

80:                                               ; preds = %65, %64
  %81 = load %struct.o2nm_cluster*, %struct.o2nm_cluster** %8, align 8
  %82 = getelementptr inbounds %struct.o2nm_cluster, %struct.o2nm_cluster* %81, i32 0, i32 0
  %83 = call i32 @write_unlock(i32* %82)
  %84 = load i8*, i8** %10, align 8
  %85 = icmp eq i8* %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = load i64, i64* @EEXIST, align 8
  %88 = sub i64 0, %87
  store i64 %88, i64* %4, align 8
  br label %91

89:                                               ; preds = %80
  %90 = load i64, i64* %7, align 8
  store i64 %90, i64* %4, align 8
  br label %91

91:                                               ; preds = %89, %86, %50, %35, %28
  %92 = load i64, i64* %4, align 8
  ret i64 %92
}

declare dso_local %struct.o2nm_cluster* @to_o2nm_cluster_from_node(%struct.o2nm_node*) #1

declare dso_local i64 @simple_strtoul(i8*, i8**, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @set_bit(i64, i32) #1

declare dso_local i32 @write_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
