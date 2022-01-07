; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_recovery.c_get_cs_sqnum.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_recovery.c_get_cs_sqnum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i64, i32 }
%struct.ubifs_cs_node = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i32 }

@.str = private unnamed_addr constant [9 x i8] c"at %d:%d\00", align 1
@UBIFS_CS_NODE_SZ = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@SCANNED_A_NODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Not a valid node\00", align 1
@UBIFS_CS_NODE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"Node a CS node, type is %d\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"CS node cmt_no %llu != current cmt_no %llu\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"commit start sqnum %llu\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"failed to get CS sqnum\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, i32, i32, i64*)* @get_cs_sqnum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_cs_sqnum(%struct.ubifs_info* %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ubifs_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.ubifs_cs_node*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  store %struct.ubifs_cs_node* null, %struct.ubifs_cs_node** %10, align 8
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  %15 = load i32, i32* %8, align 4
  %16 = call i32 (i8*, i64, ...) @dbg_rcvry(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 %14, i32 %15)
  %17 = load i32, i32* @UBIFS_CS_NODE_SZ, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.ubifs_cs_node* @kmalloc(i32 %17, i32 %18)
  store %struct.ubifs_cs_node* %19, %struct.ubifs_cs_node** %10, align 8
  %20 = load %struct.ubifs_cs_node*, %struct.ubifs_cs_node** %10, align 8
  %21 = icmp ne %struct.ubifs_cs_node* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %115

25:                                               ; preds = %4
  %26 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %27 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sub nsw i32 %28, %29
  %31 = load i32, i32* @UBIFS_CS_NODE_SZ, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %107

34:                                               ; preds = %25
  %35 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %36 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.ubifs_cs_node*, %struct.ubifs_cs_node** %10, align 8
  %40 = bitcast %struct.ubifs_cs_node* %39 to i8*
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @UBIFS_CS_NODE_SZ, align 4
  %43 = call i32 @ubi_read(i32 %37, i32 %38, i8* %40, i32 %41, i32 %42)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %34
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* @EBADMSG, align 4
  %49 = sub nsw i32 0, %48
  %50 = icmp ne i32 %47, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %110

52:                                               ; preds = %46, %34
  %53 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %54 = load %struct.ubifs_cs_node*, %struct.ubifs_cs_node** %10, align 8
  %55 = load i32, i32* @UBIFS_CS_NODE_SZ, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @ubifs_scan_a_node(%struct.ubifs_info* %53, %struct.ubifs_cs_node* %54, i32 %55, i32 %56, i32 %57, i32 0)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* @SCANNED_A_NODE, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %52
  %63 = call i32 (i8*, ...) @dbg_err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %107

64:                                               ; preds = %52
  %65 = load %struct.ubifs_cs_node*, %struct.ubifs_cs_node** %10, align 8
  %66 = getelementptr inbounds %struct.ubifs_cs_node, %struct.ubifs_cs_node* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @UBIFS_CS_NODE, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %64
  %72 = load %struct.ubifs_cs_node*, %struct.ubifs_cs_node** %10, align 8
  %73 = getelementptr inbounds %struct.ubifs_cs_node, %struct.ubifs_cs_node* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32 (i8*, ...) @dbg_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %75)
  br label %107

77:                                               ; preds = %64
  %78 = load %struct.ubifs_cs_node*, %struct.ubifs_cs_node** %10, align 8
  %79 = getelementptr inbounds %struct.ubifs_cs_node, %struct.ubifs_cs_node* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i64 @le64_to_cpu(i32 %80)
  %82 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %83 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %81, %84
  br i1 %85, label %86, label %95

86:                                               ; preds = %77
  %87 = load %struct.ubifs_cs_node*, %struct.ubifs_cs_node** %10, align 8
  %88 = getelementptr inbounds %struct.ubifs_cs_node, %struct.ubifs_cs_node* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call i64 @le64_to_cpu(i32 %89)
  %91 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %92 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = call i32 (i8*, ...) @dbg_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i64 %90, i64 %93)
  br label %107

95:                                               ; preds = %77
  %96 = load %struct.ubifs_cs_node*, %struct.ubifs_cs_node** %10, align 8
  %97 = getelementptr inbounds %struct.ubifs_cs_node, %struct.ubifs_cs_node* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i64 @le64_to_cpu(i32 %99)
  %101 = load i64*, i64** %9, align 8
  store i64 %100, i64* %101, align 8
  %102 = load i64*, i64** %9, align 8
  %103 = load i64, i64* %102, align 8
  %104 = call i32 (i8*, i64, ...) @dbg_rcvry(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i64 %103)
  %105 = load %struct.ubifs_cs_node*, %struct.ubifs_cs_node** %10, align 8
  %106 = call i32 @kfree(%struct.ubifs_cs_node* %105)
  store i32 0, i32* %5, align 4
  br label %115

107:                                              ; preds = %86, %71, %62, %33
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %11, align 4
  br label %110

110:                                              ; preds = %107, %51
  %111 = call i32 @ubifs_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %112 = load %struct.ubifs_cs_node*, %struct.ubifs_cs_node** %10, align 8
  %113 = call i32 @kfree(%struct.ubifs_cs_node* %112)
  %114 = load i32, i32* %11, align 4
  store i32 %114, i32* %5, align 4
  br label %115

115:                                              ; preds = %110, %95, %22
  %116 = load i32, i32* %5, align 4
  ret i32 %116
}

declare dso_local i32 @dbg_rcvry(i8*, i64, ...) #1

declare dso_local %struct.ubifs_cs_node* @kmalloc(i32, i32) #1

declare dso_local i32 @ubi_read(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @ubifs_scan_a_node(%struct.ubifs_info*, %struct.ubifs_cs_node*, i32, i32, i32, i32) #1

declare dso_local i32 @dbg_err(i8*, ...) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @kfree(%struct.ubifs_cs_node*) #1

declare dso_local i32 @ubifs_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
