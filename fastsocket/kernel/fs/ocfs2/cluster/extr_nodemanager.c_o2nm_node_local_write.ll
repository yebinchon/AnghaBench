; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/cluster/extr_nodemanager.c_o2nm_node_local_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/cluster/extr_nodemanager.c_o2nm_node_local_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.o2nm_node = type { i64, i64, i32 }
%struct.o2nm_cluster = type { i64, i64 }

@EINVAL = common dso_local global i64 0, align 8
@O2NM_NODE_ATTR_ADDRESS = common dso_local global i32 0, align 4
@O2NM_NODE_ATTR_NUM = common dso_local global i32 0, align 4
@O2NM_NODE_ATTR_PORT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i64 0, align 8
@O2NM_INVALID_NODE_NUM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.o2nm_node*, i8*, i64)* @o2nm_node_local_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @o2nm_node_local_write(%struct.o2nm_node* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.o2nm_node*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.o2nm_cluster*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.o2nm_node* %0, %struct.o2nm_node** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.o2nm_node*, %struct.o2nm_node** %5, align 8
  %13 = call %struct.o2nm_cluster* @to_o2nm_cluster_from_node(%struct.o2nm_node* %12)
  store %struct.o2nm_cluster* %13, %struct.o2nm_cluster** %8, align 8
  %14 = load i8*, i8** %6, align 8
  store i8* %14, i8** %10, align 8
  %15 = load i8*, i8** %10, align 8
  %16 = call i64 @simple_strtoul(i8* %15, i8** %10, i32 0)
  store i64 %16, i64* %9, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %29

19:                                               ; preds = %3
  %20 = load i8*, i8** %10, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load i8*, i8** %10, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 10
  br i1 %28, label %29, label %32

29:                                               ; preds = %24, %3
  %30 = load i64, i64* @EINVAL, align 8
  %31 = sub i64 0, %30
  store i64 %31, i64* %4, align 8
  br label %136

32:                                               ; preds = %24, %19
  %33 = load i64, i64* %9, align 8
  %34 = icmp ne i64 %33, 0
  %35 = xor i1 %34, true
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %9, align 8
  %39 = load i32, i32* @O2NM_NODE_ATTR_ADDRESS, align 4
  %40 = load %struct.o2nm_node*, %struct.o2nm_node** %5, align 8
  %41 = getelementptr inbounds %struct.o2nm_node, %struct.o2nm_node* %40, i32 0, i32 2
  %42 = call i32 @test_bit(i32 %39, i32* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %32
  %45 = load i32, i32* @O2NM_NODE_ATTR_NUM, align 4
  %46 = load %struct.o2nm_node*, %struct.o2nm_node** %5, align 8
  %47 = getelementptr inbounds %struct.o2nm_node, %struct.o2nm_node* %46, i32 0, i32 2
  %48 = call i32 @test_bit(i32 %45, i32* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %44
  %51 = load i32, i32* @O2NM_NODE_ATTR_PORT, align 4
  %52 = load %struct.o2nm_node*, %struct.o2nm_node** %5, align 8
  %53 = getelementptr inbounds %struct.o2nm_node, %struct.o2nm_node* %52, i32 0, i32 2
  %54 = call i32 @test_bit(i32 %51, i32* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %50, %44, %32
  %57 = load i64, i64* @EINVAL, align 8
  %58 = sub i64 0, %57
  store i64 %58, i64* %4, align 8
  br label %136

59:                                               ; preds = %50
  %60 = load i64, i64* %9, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %79

62:                                               ; preds = %59
  %63 = load i64, i64* %9, align 8
  %64 = load %struct.o2nm_cluster*, %struct.o2nm_cluster** %8, align 8
  %65 = getelementptr inbounds %struct.o2nm_cluster, %struct.o2nm_cluster* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %63, %66
  br i1 %67, label %68, label %79

68:                                               ; preds = %62
  %69 = load %struct.o2nm_cluster*, %struct.o2nm_cluster** %8, align 8
  %70 = getelementptr inbounds %struct.o2nm_cluster, %struct.o2nm_cluster* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.o2nm_node*, %struct.o2nm_node** %5, align 8
  %73 = getelementptr inbounds %struct.o2nm_node, %struct.o2nm_node* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %71, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %68
  %77 = load i64, i64* @EBUSY, align 8
  %78 = sub i64 0, %77
  store i64 %78, i64* %4, align 8
  br label %136

79:                                               ; preds = %68, %62, %59
  %80 = load i64, i64* %9, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %95

82:                                               ; preds = %79
  %83 = load %struct.o2nm_cluster*, %struct.o2nm_cluster** %8, align 8
  %84 = getelementptr inbounds %struct.o2nm_cluster, %struct.o2nm_cluster* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %95, label %87

87:                                               ; preds = %82
  %88 = load %struct.o2nm_node*, %struct.o2nm_node** %5, align 8
  %89 = call i64 @o2net_start_listening(%struct.o2nm_node* %88)
  store i64 %89, i64* %11, align 8
  %90 = load i64, i64* %11, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  %93 = load i64, i64* %11, align 8
  store i64 %93, i64* %4, align 8
  br label %136

94:                                               ; preds = %87
  br label %95

95:                                               ; preds = %94, %82, %79
  %96 = load i64, i64* %9, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %117, label %98

98:                                               ; preds = %95
  %99 = load %struct.o2nm_cluster*, %struct.o2nm_cluster** %8, align 8
  %100 = getelementptr inbounds %struct.o2nm_cluster, %struct.o2nm_cluster* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %117

103:                                              ; preds = %98
  %104 = load %struct.o2nm_cluster*, %struct.o2nm_cluster** %8, align 8
  %105 = getelementptr inbounds %struct.o2nm_cluster, %struct.o2nm_cluster* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.o2nm_node*, %struct.o2nm_node** %5, align 8
  %108 = getelementptr inbounds %struct.o2nm_node, %struct.o2nm_node* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp eq i64 %106, %109
  br i1 %110, label %111, label %117

111:                                              ; preds = %103
  %112 = load %struct.o2nm_node*, %struct.o2nm_node** %5, align 8
  %113 = call i32 @o2net_stop_listening(%struct.o2nm_node* %112)
  %114 = load i64, i64* @O2NM_INVALID_NODE_NUM, align 8
  %115 = load %struct.o2nm_cluster*, %struct.o2nm_cluster** %8, align 8
  %116 = getelementptr inbounds %struct.o2nm_cluster, %struct.o2nm_cluster* %115, i32 0, i32 1
  store i64 %114, i64* %116, align 8
  br label %117

117:                                              ; preds = %111, %103, %98, %95
  %118 = load i64, i64* %9, align 8
  %119 = load %struct.o2nm_node*, %struct.o2nm_node** %5, align 8
  %120 = getelementptr inbounds %struct.o2nm_node, %struct.o2nm_node* %119, i32 0, i32 1
  store i64 %118, i64* %120, align 8
  %121 = load %struct.o2nm_node*, %struct.o2nm_node** %5, align 8
  %122 = getelementptr inbounds %struct.o2nm_node, %struct.o2nm_node* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %117
  %126 = load i64, i64* %9, align 8
  %127 = load %struct.o2nm_cluster*, %struct.o2nm_cluster** %8, align 8
  %128 = getelementptr inbounds %struct.o2nm_cluster, %struct.o2nm_cluster* %127, i32 0, i32 0
  store i64 %126, i64* %128, align 8
  %129 = load %struct.o2nm_node*, %struct.o2nm_node** %5, align 8
  %130 = getelementptr inbounds %struct.o2nm_node, %struct.o2nm_node* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.o2nm_cluster*, %struct.o2nm_cluster** %8, align 8
  %133 = getelementptr inbounds %struct.o2nm_cluster, %struct.o2nm_cluster* %132, i32 0, i32 1
  store i64 %131, i64* %133, align 8
  br label %134

134:                                              ; preds = %125, %117
  %135 = load i64, i64* %7, align 8
  store i64 %135, i64* %4, align 8
  br label %136

136:                                              ; preds = %134, %92, %76, %56, %29
  %137 = load i64, i64* %4, align 8
  ret i64 %137
}

declare dso_local %struct.o2nm_cluster* @to_o2nm_cluster_from_node(%struct.o2nm_node*) #1

declare dso_local i64 @simple_strtoul(i8*, i8**, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @o2net_start_listening(%struct.o2nm_node*) #1

declare dso_local i32 @o2net_stop_listening(%struct.o2nm_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
