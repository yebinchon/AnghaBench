; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_neighbour.c_pneigh_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_neighbour.c_pneigh_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pneigh_entry = type { %struct.pneigh_entry*, %struct.net_device*, i32, i32 }
%struct.neigh_table = type { i32, i32, %struct.pneigh_entry**, i64 (%struct.pneigh_entry*)* }
%struct.net = type { i32 }
%struct.net_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pneigh_entry* @pneigh_lookup(%struct.neigh_table* %0, %struct.net* %1, i8* %2, %struct.net_device* %3, i32 %4) #0 {
  %6 = alloca %struct.neigh_table*, align 8
  %7 = alloca %struct.net*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.pneigh_entry*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.neigh_table* %0, %struct.neigh_table** %6, align 8
  store %struct.net* %1, %struct.net** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.net_device* %3, %struct.net_device** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load %struct.neigh_table*, %struct.neigh_table** %6, align 8
  %15 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %12, align 4
  %17 = load i8*, i8** %8, align 8
  %18 = load i32, i32* %12, align 4
  %19 = call i64 @pneigh_hash(i8* %17, i32 %18)
  store i64 %19, i64* %13, align 8
  %20 = load %struct.neigh_table*, %struct.neigh_table** %6, align 8
  %21 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %20, i32 0, i32 1
  %22 = call i32 @read_lock_bh(i32* %21)
  %23 = load %struct.neigh_table*, %struct.neigh_table** %6, align 8
  %24 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %23, i32 0, i32 2
  %25 = load %struct.pneigh_entry**, %struct.pneigh_entry*** %24, align 8
  %26 = load i64, i64* %13, align 8
  %27 = getelementptr inbounds %struct.pneigh_entry*, %struct.pneigh_entry** %25, i64 %26
  %28 = load %struct.pneigh_entry*, %struct.pneigh_entry** %27, align 8
  %29 = load %struct.net*, %struct.net** %7, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = load i32, i32* %12, align 4
  %32 = load %struct.net_device*, %struct.net_device** %9, align 8
  %33 = call %struct.pneigh_entry* @__pneigh_lookup_1(%struct.pneigh_entry* %28, %struct.net* %29, i8* %30, i32 %31, %struct.net_device* %32)
  store %struct.pneigh_entry* %33, %struct.pneigh_entry** %11, align 8
  %34 = load %struct.neigh_table*, %struct.neigh_table** %6, align 8
  %35 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %34, i32 0, i32 1
  %36 = call i32 @read_unlock_bh(i32* %35)
  %37 = load %struct.pneigh_entry*, %struct.pneigh_entry** %11, align 8
  %38 = icmp ne %struct.pneigh_entry* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %5
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %39, %5
  br label %118

43:                                               ; preds = %39
  %44 = call i32 (...) @ASSERT_RTNL()
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = add i64 24, %46
  %48 = trunc i64 %47 to i32
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call %struct.pneigh_entry* @kmalloc(i32 %48, i32 %49)
  store %struct.pneigh_entry* %50, %struct.pneigh_entry** %11, align 8
  %51 = load %struct.pneigh_entry*, %struct.pneigh_entry** %11, align 8
  %52 = icmp ne %struct.pneigh_entry* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %43
  br label %118

54:                                               ; preds = %43
  %55 = load %struct.pneigh_entry*, %struct.pneigh_entry** %11, align 8
  %56 = getelementptr inbounds %struct.pneigh_entry, %struct.pneigh_entry* %55, i32 0, i32 3
  %57 = load %struct.net*, %struct.net** %7, align 8
  %58 = call i32 @hold_net(%struct.net* %57)
  %59 = call i32 @write_pnet(i32* %56, i32 %58)
  %60 = load %struct.pneigh_entry*, %struct.pneigh_entry** %11, align 8
  %61 = getelementptr inbounds %struct.pneigh_entry, %struct.pneigh_entry* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = load i32, i32* %12, align 4
  %65 = call i32 @memcpy(i32 %62, i8* %63, i32 %64)
  %66 = load %struct.net_device*, %struct.net_device** %9, align 8
  %67 = load %struct.pneigh_entry*, %struct.pneigh_entry** %11, align 8
  %68 = getelementptr inbounds %struct.pneigh_entry, %struct.pneigh_entry* %67, i32 0, i32 1
  store %struct.net_device* %66, %struct.net_device** %68, align 8
  %69 = load %struct.net_device*, %struct.net_device** %9, align 8
  %70 = icmp ne %struct.net_device* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %54
  %72 = load %struct.net_device*, %struct.net_device** %9, align 8
  %73 = call i32 @dev_hold(%struct.net_device* %72)
  br label %74

74:                                               ; preds = %71, %54
  %75 = load %struct.neigh_table*, %struct.neigh_table** %6, align 8
  %76 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %75, i32 0, i32 3
  %77 = load i64 (%struct.pneigh_entry*)*, i64 (%struct.pneigh_entry*)** %76, align 8
  %78 = icmp ne i64 (%struct.pneigh_entry*)* %77, null
  br i1 %78, label %79, label %97

79:                                               ; preds = %74
  %80 = load %struct.neigh_table*, %struct.neigh_table** %6, align 8
  %81 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %80, i32 0, i32 3
  %82 = load i64 (%struct.pneigh_entry*)*, i64 (%struct.pneigh_entry*)** %81, align 8
  %83 = load %struct.pneigh_entry*, %struct.pneigh_entry** %11, align 8
  %84 = call i64 %82(%struct.pneigh_entry* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %79
  %87 = load %struct.net_device*, %struct.net_device** %9, align 8
  %88 = icmp ne %struct.net_device* %87, null
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load %struct.net_device*, %struct.net_device** %9, align 8
  %91 = call i32 @dev_put(%struct.net_device* %90)
  br label %92

92:                                               ; preds = %89, %86
  %93 = load %struct.net*, %struct.net** %7, align 8
  %94 = call i32 @release_net(%struct.net* %93)
  %95 = load %struct.pneigh_entry*, %struct.pneigh_entry** %11, align 8
  %96 = call i32 @kfree(%struct.pneigh_entry* %95)
  store %struct.pneigh_entry* null, %struct.pneigh_entry** %11, align 8
  br label %118

97:                                               ; preds = %79, %74
  %98 = load %struct.neigh_table*, %struct.neigh_table** %6, align 8
  %99 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %98, i32 0, i32 1
  %100 = call i32 @write_lock_bh(i32* %99)
  %101 = load %struct.neigh_table*, %struct.neigh_table** %6, align 8
  %102 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %101, i32 0, i32 2
  %103 = load %struct.pneigh_entry**, %struct.pneigh_entry*** %102, align 8
  %104 = load i64, i64* %13, align 8
  %105 = getelementptr inbounds %struct.pneigh_entry*, %struct.pneigh_entry** %103, i64 %104
  %106 = load %struct.pneigh_entry*, %struct.pneigh_entry** %105, align 8
  %107 = load %struct.pneigh_entry*, %struct.pneigh_entry** %11, align 8
  %108 = getelementptr inbounds %struct.pneigh_entry, %struct.pneigh_entry* %107, i32 0, i32 0
  store %struct.pneigh_entry* %106, %struct.pneigh_entry** %108, align 8
  %109 = load %struct.pneigh_entry*, %struct.pneigh_entry** %11, align 8
  %110 = load %struct.neigh_table*, %struct.neigh_table** %6, align 8
  %111 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %110, i32 0, i32 2
  %112 = load %struct.pneigh_entry**, %struct.pneigh_entry*** %111, align 8
  %113 = load i64, i64* %13, align 8
  %114 = getelementptr inbounds %struct.pneigh_entry*, %struct.pneigh_entry** %112, i64 %113
  store %struct.pneigh_entry* %109, %struct.pneigh_entry** %114, align 8
  %115 = load %struct.neigh_table*, %struct.neigh_table** %6, align 8
  %116 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %115, i32 0, i32 1
  %117 = call i32 @write_unlock_bh(i32* %116)
  br label %118

118:                                              ; preds = %97, %92, %53, %42
  %119 = load %struct.pneigh_entry*, %struct.pneigh_entry** %11, align 8
  ret %struct.pneigh_entry* %119
}

declare dso_local i64 @pneigh_hash(i8*, i32) #1

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local %struct.pneigh_entry* @__pneigh_lookup_1(%struct.pneigh_entry*, %struct.net*, i8*, i32, %struct.net_device*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local %struct.pneigh_entry* @kmalloc(i32, i32) #1

declare dso_local i32 @write_pnet(i32*, i32) #1

declare dso_local i32 @hold_net(%struct.net*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @release_net(%struct.net*) #1

declare dso_local i32 @kfree(%struct.pneigh_entry*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
