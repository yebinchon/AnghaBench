; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/mon/extr_mon_text.c_mon_text_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/mon/extr_mon_text.c_mon_text_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mon_bus = type { %struct.dentry*, %struct.dentry*, %struct.dentry* }
%struct.dentry = type { i32 }
%struct.usb_bus = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%dt\00", align 1
@mon_dir = common dso_local global i32 0, align 4
@mon_fops_text_t = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%du\00", align 1
@mon_fops_text_u = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"%ds\00", align 1
@mon_fops_stat = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mon_text_add(%struct.mon_bus* %0, %struct.usb_bus* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mon_bus*, align 8
  %5 = alloca %struct.usb_bus*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca [10 x i8], align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mon_bus* %0, %struct.mon_bus** %4, align 8
  store %struct.usb_bus* %1, %struct.usb_bus** %5, align 8
  %10 = load %struct.usb_bus*, %struct.usb_bus** %5, align 8
  %11 = icmp ne %struct.usb_bus* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.usb_bus*, %struct.usb_bus** %5, align 8
  %14 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  br label %17

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %16, %12
  %18 = phi i32 [ %15, %12 ], [ 0, %16 ]
  store i32 %18, i32* %8, align 4
  %19 = load %struct.usb_bus*, %struct.usb_bus** %5, align 8
  %20 = icmp ne %struct.usb_bus* %19, null
  br i1 %20, label %21, label %43

21:                                               ; preds = %17
  %22 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @snprintf(i8* %22, i32 10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp sle i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* %9, align 4
  %29 = icmp sge i32 %28, 10
  br i1 %29, label %30, label %31

30:                                               ; preds = %27, %21
  br label %107

31:                                               ; preds = %27
  %32 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %33 = load i32, i32* @mon_dir, align 4
  %34 = load %struct.mon_bus*, %struct.mon_bus** %4, align 8
  %35 = call %struct.dentry* @debugfs_create_file(i8* %32, i32 384, i32 %33, %struct.mon_bus* %34, i32* @mon_fops_text_t)
  store %struct.dentry* %35, %struct.dentry** %6, align 8
  %36 = load %struct.dentry*, %struct.dentry** %6, align 8
  %37 = icmp eq %struct.dentry* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %106

39:                                               ; preds = %31
  %40 = load %struct.dentry*, %struct.dentry** %6, align 8
  %41 = load %struct.mon_bus*, %struct.mon_bus** %4, align 8
  %42 = getelementptr inbounds %struct.mon_bus, %struct.mon_bus* %41, i32 0, i32 0
  store %struct.dentry* %40, %struct.dentry** %42, align 8
  br label %43

43:                                               ; preds = %39, %17
  %44 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @snprintf(i8* %44, i32 10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp sle i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %43
  %50 = load i32, i32* %9, align 4
  %51 = icmp sge i32 %50, 10
  br i1 %51, label %52, label %53

52:                                               ; preds = %49, %43
  br label %95

53:                                               ; preds = %49
  %54 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %55 = load i32, i32* @mon_dir, align 4
  %56 = load %struct.mon_bus*, %struct.mon_bus** %4, align 8
  %57 = call %struct.dentry* @debugfs_create_file(i8* %54, i32 384, i32 %55, %struct.mon_bus* %56, i32* @mon_fops_text_u)
  store %struct.dentry* %57, %struct.dentry** %6, align 8
  %58 = load %struct.dentry*, %struct.dentry** %6, align 8
  %59 = icmp eq %struct.dentry* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  br label %94

61:                                               ; preds = %53
  %62 = load %struct.dentry*, %struct.dentry** %6, align 8
  %63 = load %struct.mon_bus*, %struct.mon_bus** %4, align 8
  %64 = getelementptr inbounds %struct.mon_bus, %struct.mon_bus* %63, i32 0, i32 1
  store %struct.dentry* %62, %struct.dentry** %64, align 8
  %65 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @snprintf(i8* %65, i32 10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp sle i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %61
  %71 = load i32, i32* %9, align 4
  %72 = icmp sge i32 %71, 10
  br i1 %72, label %73, label %74

73:                                               ; preds = %70, %61
  br label %87

74:                                               ; preds = %70
  %75 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %76 = load i32, i32* @mon_dir, align 4
  %77 = load %struct.mon_bus*, %struct.mon_bus** %4, align 8
  %78 = call %struct.dentry* @debugfs_create_file(i8* %75, i32 384, i32 %76, %struct.mon_bus* %77, i32* @mon_fops_stat)
  store %struct.dentry* %78, %struct.dentry** %6, align 8
  %79 = load %struct.dentry*, %struct.dentry** %6, align 8
  %80 = icmp eq %struct.dentry* %79, null
  br i1 %80, label %81, label %82

81:                                               ; preds = %74
  br label %86

82:                                               ; preds = %74
  %83 = load %struct.dentry*, %struct.dentry** %6, align 8
  %84 = load %struct.mon_bus*, %struct.mon_bus** %4, align 8
  %85 = getelementptr inbounds %struct.mon_bus, %struct.mon_bus* %84, i32 0, i32 2
  store %struct.dentry* %83, %struct.dentry** %85, align 8
  store i32 1, i32* %3, align 4
  br label %108

86:                                               ; preds = %81
  br label %87

87:                                               ; preds = %86, %73
  %88 = load %struct.mon_bus*, %struct.mon_bus** %4, align 8
  %89 = getelementptr inbounds %struct.mon_bus, %struct.mon_bus* %88, i32 0, i32 1
  %90 = load %struct.dentry*, %struct.dentry** %89, align 8
  %91 = call i32 @debugfs_remove(%struct.dentry* %90)
  %92 = load %struct.mon_bus*, %struct.mon_bus** %4, align 8
  %93 = getelementptr inbounds %struct.mon_bus, %struct.mon_bus* %92, i32 0, i32 1
  store %struct.dentry* null, %struct.dentry** %93, align 8
  br label %94

94:                                               ; preds = %87, %60
  br label %95

95:                                               ; preds = %94, %52
  %96 = load %struct.usb_bus*, %struct.usb_bus** %5, align 8
  %97 = icmp ne %struct.usb_bus* %96, null
  br i1 %97, label %98, label %105

98:                                               ; preds = %95
  %99 = load %struct.mon_bus*, %struct.mon_bus** %4, align 8
  %100 = getelementptr inbounds %struct.mon_bus, %struct.mon_bus* %99, i32 0, i32 0
  %101 = load %struct.dentry*, %struct.dentry** %100, align 8
  %102 = call i32 @debugfs_remove(%struct.dentry* %101)
  %103 = load %struct.mon_bus*, %struct.mon_bus** %4, align 8
  %104 = getelementptr inbounds %struct.mon_bus, %struct.mon_bus* %103, i32 0, i32 0
  store %struct.dentry* null, %struct.dentry** %104, align 8
  br label %105

105:                                              ; preds = %98, %95
  br label %106

106:                                              ; preds = %105, %38
  br label %107

107:                                              ; preds = %106, %30
  store i32 0, i32* %3, align 4
  br label %108

108:                                              ; preds = %107, %82
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local %struct.dentry* @debugfs_create_file(i8*, i32, i32, %struct.mon_bus*, i32*) #1

declare dso_local i32 @debugfs_remove(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
