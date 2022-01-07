; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_name_table.c_tipc_nametbl_mc_translate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_name_table.c_tipc_nametbl_mc_translate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port_list = type { i32 }
%struct.name_seq = type { i32, i32, %struct.sub_seq* }
%struct.sub_seq = type { i64, i64, i64, %struct.publication* }
%struct.publication = type { i64, %struct.publication*, i32 }

@tipc_nametbl_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_nametbl_mc_translate(i64 %0, i64 %1, i64 %2, i64 %3, %struct.port_list* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.port_list*, align 8
  %11 = alloca %struct.name_seq*, align 8
  %12 = alloca %struct.sub_seq*, align 8
  %13 = alloca %struct.sub_seq*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.publication*, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.port_list* %4, %struct.port_list** %10, align 8
  store i32 0, i32* %14, align 4
  %16 = call i32 @read_lock_bh(i32* @tipc_nametbl_lock)
  %17 = load i64, i64* %6, align 8
  %18 = call %struct.name_seq* @nametbl_find_seq(i64 %17)
  store %struct.name_seq* %18, %struct.name_seq** %11, align 8
  %19 = load %struct.name_seq*, %struct.name_seq** %11, align 8
  %20 = icmp ne %struct.name_seq* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %5
  br label %100

22:                                               ; preds = %5
  %23 = load %struct.name_seq*, %struct.name_seq** %11, align 8
  %24 = getelementptr inbounds %struct.name_seq, %struct.name_seq* %23, i32 0, i32 1
  %25 = call i32 @spin_lock_bh(i32* %24)
  %26 = load %struct.name_seq*, %struct.name_seq** %11, align 8
  %27 = getelementptr inbounds %struct.name_seq, %struct.name_seq* %26, i32 0, i32 2
  %28 = load %struct.sub_seq*, %struct.sub_seq** %27, align 8
  %29 = load %struct.name_seq*, %struct.name_seq** %11, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @nameseq_locate_subseq(%struct.name_seq* %29, i64 %30)
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.sub_seq, %struct.sub_seq* %28, i64 %32
  store %struct.sub_seq* %33, %struct.sub_seq** %12, align 8
  %34 = load %struct.name_seq*, %struct.name_seq** %11, align 8
  %35 = getelementptr inbounds %struct.name_seq, %struct.name_seq* %34, i32 0, i32 2
  %36 = load %struct.sub_seq*, %struct.sub_seq** %35, align 8
  %37 = load %struct.name_seq*, %struct.name_seq** %11, align 8
  %38 = getelementptr inbounds %struct.name_seq, %struct.name_seq* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.sub_seq, %struct.sub_seq* %36, i64 %40
  store %struct.sub_seq* %41, %struct.sub_seq** %13, align 8
  br label %42

42:                                               ; preds = %93, %22
  %43 = load %struct.sub_seq*, %struct.sub_seq** %12, align 8
  %44 = load %struct.sub_seq*, %struct.sub_seq** %13, align 8
  %45 = icmp ne %struct.sub_seq* %43, %44
  br i1 %45, label %46, label %96

46:                                               ; preds = %42
  %47 = load %struct.sub_seq*, %struct.sub_seq** %12, align 8
  %48 = getelementptr inbounds %struct.sub_seq, %struct.sub_seq* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %8, align 8
  %51 = icmp sgt i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %96

53:                                               ; preds = %46
  %54 = load %struct.sub_seq*, %struct.sub_seq** %12, align 8
  %55 = getelementptr inbounds %struct.sub_seq, %struct.sub_seq* %54, i32 0, i32 3
  %56 = load %struct.publication*, %struct.publication** %55, align 8
  store %struct.publication* %56, %struct.publication** %15, align 8
  %57 = load %struct.publication*, %struct.publication** %15, align 8
  %58 = icmp ne %struct.publication* %57, null
  br i1 %58, label %59, label %83

59:                                               ; preds = %53
  br label %60

60:                                               ; preds = %76, %59
  %61 = load %struct.publication*, %struct.publication** %15, align 8
  %62 = getelementptr inbounds %struct.publication, %struct.publication* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %9, align 8
  %65 = icmp sle i64 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %60
  %67 = load %struct.port_list*, %struct.port_list** %10, align 8
  %68 = load %struct.publication*, %struct.publication** %15, align 8
  %69 = getelementptr inbounds %struct.publication, %struct.publication* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @tipc_port_list_add(%struct.port_list* %67, i32 %70)
  br label %72

72:                                               ; preds = %66, %60
  %73 = load %struct.publication*, %struct.publication** %15, align 8
  %74 = getelementptr inbounds %struct.publication, %struct.publication* %73, i32 0, i32 1
  %75 = load %struct.publication*, %struct.publication** %74, align 8
  store %struct.publication* %75, %struct.publication** %15, align 8
  br label %76

76:                                               ; preds = %72
  %77 = load %struct.publication*, %struct.publication** %15, align 8
  %78 = load %struct.sub_seq*, %struct.sub_seq** %12, align 8
  %79 = getelementptr inbounds %struct.sub_seq, %struct.sub_seq* %78, i32 0, i32 3
  %80 = load %struct.publication*, %struct.publication** %79, align 8
  %81 = icmp ne %struct.publication* %77, %80
  br i1 %81, label %60, label %82

82:                                               ; preds = %76
  br label %83

83:                                               ; preds = %82, %53
  %84 = load %struct.sub_seq*, %struct.sub_seq** %12, align 8
  %85 = getelementptr inbounds %struct.sub_seq, %struct.sub_seq* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.sub_seq*, %struct.sub_seq** %12, align 8
  %88 = getelementptr inbounds %struct.sub_seq, %struct.sub_seq* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %86, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %83
  store i32 1, i32* %14, align 4
  br label %92

92:                                               ; preds = %91, %83
  br label %93

93:                                               ; preds = %92
  %94 = load %struct.sub_seq*, %struct.sub_seq** %12, align 8
  %95 = getelementptr inbounds %struct.sub_seq, %struct.sub_seq* %94, i32 1
  store %struct.sub_seq* %95, %struct.sub_seq** %12, align 8
  br label %42

96:                                               ; preds = %52, %42
  %97 = load %struct.name_seq*, %struct.name_seq** %11, align 8
  %98 = getelementptr inbounds %struct.name_seq, %struct.name_seq* %97, i32 0, i32 1
  %99 = call i32 @spin_unlock_bh(i32* %98)
  br label %100

100:                                              ; preds = %96, %21
  %101 = call i32 @read_unlock_bh(i32* @tipc_nametbl_lock)
  %102 = load i32, i32* %14, align 4
  ret i32 %102
}

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local %struct.name_seq* @nametbl_find_seq(i64) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @nameseq_locate_subseq(%struct.name_seq*, i64) #1

declare dso_local i32 @tipc_port_list_add(%struct.port_list*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
