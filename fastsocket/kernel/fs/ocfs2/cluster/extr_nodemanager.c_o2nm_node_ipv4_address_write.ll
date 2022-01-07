; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/cluster/extr_nodemanager.c_o2nm_node_ipv4_address_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/cluster/extr_nodemanager.c_o2nm_node_ipv4_address_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.o2nm_node = type { i32, i32 }
%struct.o2nm_cluster = type { i32, i32 }
%struct.rb_node = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"%3u.%3u.%3u.%3u\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.o2nm_node*, i8*, i64)* @o2nm_node_ipv4_address_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @o2nm_node_ipv4_address_write(%struct.o2nm_node* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.o2nm_node*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.o2nm_cluster*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.rb_node**, align 8
  %12 = alloca %struct.rb_node*, align 8
  %13 = alloca [4 x i32], align 16
  %14 = alloca i32, align 4
  store %struct.o2nm_node* %0, %struct.o2nm_node** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load %struct.o2nm_node*, %struct.o2nm_node** %5, align 8
  %16 = call %struct.o2nm_cluster* @to_o2nm_cluster_from_node(%struct.o2nm_node* %15)
  store %struct.o2nm_cluster* %16, %struct.o2nm_cluster** %8, align 8
  store i32 0, i32* %14, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 3
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 2
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 1
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %22 = call i32 @sscanf(i8* %17, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* %18, i32* %19, i32* %20, i32* %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 4
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %91

28:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %29

29:                                               ; preds = %52, %28
  %30 = load i32, i32* %10, align 4
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %32 = call i32 @ARRAY_SIZE(i32* %31)
  %33 = icmp slt i32 %30, %32
  br i1 %33, label %34, label %55

34:                                               ; preds = %29
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = icmp ugt i32 %38, 255
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* @ERANGE, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %91

43:                                               ; preds = %34
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %10, align 4
  %49 = mul nsw i32 %48, 8
  %50 = shl i32 %47, %49
  %51 = call i32 @be32_add_cpu(i32* %14, i32 %50)
  br label %52

52:                                               ; preds = %43
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %10, align 4
  br label %29

55:                                               ; preds = %29
  store i32 0, i32* %9, align 4
  %56 = load %struct.o2nm_cluster*, %struct.o2nm_cluster** %8, align 8
  %57 = getelementptr inbounds %struct.o2nm_cluster, %struct.o2nm_cluster* %56, i32 0, i32 0
  %58 = call i32 @write_lock(i32* %57)
  %59 = load %struct.o2nm_cluster*, %struct.o2nm_cluster** %8, align 8
  %60 = load i32, i32* %14, align 4
  %61 = call i64 @o2nm_node_ip_tree_lookup(%struct.o2nm_cluster* %59, i32 %60, %struct.rb_node*** %11, %struct.rb_node** %12)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %55
  %64 = load i32, i32* @EEXIST, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %9, align 4
  br label %77

66:                                               ; preds = %55
  %67 = load %struct.o2nm_node*, %struct.o2nm_node** %5, align 8
  %68 = getelementptr inbounds %struct.o2nm_node, %struct.o2nm_node* %67, i32 0, i32 1
  %69 = load %struct.rb_node*, %struct.rb_node** %12, align 8
  %70 = load %struct.rb_node**, %struct.rb_node*** %11, align 8
  %71 = call i32 @rb_link_node(i32* %68, %struct.rb_node* %69, %struct.rb_node** %70)
  %72 = load %struct.o2nm_node*, %struct.o2nm_node** %5, align 8
  %73 = getelementptr inbounds %struct.o2nm_node, %struct.o2nm_node* %72, i32 0, i32 1
  %74 = load %struct.o2nm_cluster*, %struct.o2nm_cluster** %8, align 8
  %75 = getelementptr inbounds %struct.o2nm_cluster, %struct.o2nm_cluster* %74, i32 0, i32 1
  %76 = call i32 @rb_insert_color(i32* %73, i32* %75)
  br label %77

77:                                               ; preds = %66, %63
  %78 = load %struct.o2nm_cluster*, %struct.o2nm_cluster** %8, align 8
  %79 = getelementptr inbounds %struct.o2nm_cluster, %struct.o2nm_cluster* %78, i32 0, i32 0
  %80 = call i32 @write_unlock(i32* %79)
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %77
  %84 = load i32, i32* %9, align 4
  store i32 %84, i32* %4, align 4
  br label %91

85:                                               ; preds = %77
  %86 = load %struct.o2nm_node*, %struct.o2nm_node** %5, align 8
  %87 = getelementptr inbounds %struct.o2nm_node, %struct.o2nm_node* %86, i32 0, i32 0
  %88 = call i32 @memcpy(i32* %87, i32* %14, i32 4)
  %89 = load i64, i64* %7, align 8
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %85, %83, %40, %25
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local %struct.o2nm_cluster* @to_o2nm_cluster_from_node(%struct.o2nm_node*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @be32_add_cpu(i32*, i32) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i64 @o2nm_node_ip_tree_lookup(%struct.o2nm_cluster*, i32, %struct.rb_node***, %struct.rb_node**) #1

declare dso_local i32 @rb_link_node(i32*, %struct.rb_node*, %struct.rb_node**) #1

declare dso_local i32 @rb_insert_color(i32*, i32*) #1

declare dso_local i32 @write_unlock(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
