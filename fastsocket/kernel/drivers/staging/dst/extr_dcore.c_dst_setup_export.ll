; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dst/extr_dcore.c_dst_setup_export.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dst/extr_dcore.c_dst_setup_export.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_node = type { i64, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i64, i32 }
%struct.dst_ctl = type { i32 }
%struct.dst_export_ctl = type { i8* }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@FMODE_READ = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@loff_t = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dst_node*, %struct.dst_ctl*, %struct.dst_export_ctl*)* @dst_setup_export to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dst_setup_export(%struct.dst_node* %0, %struct.dst_ctl* %1, %struct.dst_export_ctl* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dst_node*, align 8
  %6 = alloca %struct.dst_ctl*, align 8
  %7 = alloca %struct.dst_export_ctl*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dst_node* %0, %struct.dst_node** %5, align 8
  store %struct.dst_ctl* %1, %struct.dst_ctl** %6, align 8
  store %struct.dst_export_ctl* %2, %struct.dst_export_ctl** %7, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.dst_node*, %struct.dst_node** %5, align 8
  %11 = getelementptr inbounds %struct.dst_node, %struct.dst_node* %10, i32 0, i32 2
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.dst_export_ctl*, %struct.dst_export_ctl** %7, align 8
  %16 = getelementptr inbounds %struct.dst_export_ctl, %struct.dst_export_ctl* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @snprintf(i32 %14, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %17)
  %19 = load %struct.dst_export_ctl*, %struct.dst_export_ctl** %7, align 8
  %20 = getelementptr inbounds %struct.dst_export_ctl, %struct.dst_export_ctl* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @dst_lookup_device(i8* %21, i32* %9)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %4, align 4
  br label %98

27:                                               ; preds = %3
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @FMODE_READ, align 4
  %30 = load i32, i32* @FMODE_WRITE, align 4
  %31 = or i32 %29, %30
  %32 = call %struct.TYPE_7__* @open_by_devnum(i32 %28, i32 %31)
  %33 = load %struct.dst_node*, %struct.dst_node** %5, align 8
  %34 = getelementptr inbounds %struct.dst_node, %struct.dst_node* %33, i32 0, i32 1
  store %struct.TYPE_7__* %32, %struct.TYPE_7__** %34, align 8
  %35 = load %struct.dst_node*, %struct.dst_node** %5, align 8
  %36 = getelementptr inbounds %struct.dst_node, %struct.dst_node* %35, i32 0, i32 1
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = icmp ne %struct.TYPE_7__* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %27
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %98

42:                                               ; preds = %27
  %43 = load %struct.dst_node*, %struct.dst_node** %5, align 8
  %44 = getelementptr inbounds %struct.dst_node, %struct.dst_node* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %62

47:                                               ; preds = %42
  %48 = load i32, i32* @loff_t, align 4
  %49 = load %struct.dst_node*, %struct.dst_node** %5, align 8
  %50 = getelementptr inbounds %struct.dst_node, %struct.dst_node* %49, i32 0, i32 1
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.dst_node*, %struct.dst_node** %5, align 8
  %57 = getelementptr inbounds %struct.dst_node, %struct.dst_node* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i64 @min_t(i32 %48, i64 %55, i64 %58)
  %60 = load %struct.dst_node*, %struct.dst_node** %5, align 8
  %61 = getelementptr inbounds %struct.dst_node, %struct.dst_node* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  br label %72

62:                                               ; preds = %42
  %63 = load %struct.dst_node*, %struct.dst_node** %5, align 8
  %64 = getelementptr inbounds %struct.dst_node, %struct.dst_node* %63, i32 0, i32 1
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.dst_node*, %struct.dst_node** %5, align 8
  %71 = getelementptr inbounds %struct.dst_node, %struct.dst_node* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  br label %72

72:                                               ; preds = %62, %47
  %73 = load %struct.dst_node*, %struct.dst_node** %5, align 8
  %74 = getelementptr inbounds %struct.dst_node, %struct.dst_node* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.dst_node*, %struct.dst_node** %5, align 8
  %77 = getelementptr inbounds %struct.dst_node, %struct.dst_node* %76, i32 0, i32 2
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  store i64 %75, i64* %79, align 8
  %80 = load %struct.dst_node*, %struct.dst_node** %5, align 8
  %81 = load %struct.dst_export_ctl*, %struct.dst_export_ctl** %7, align 8
  %82 = call i32 @dst_node_init_listened(%struct.dst_node* %80, %struct.dst_export_ctl* %81)
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %72
  br label %87

86:                                               ; preds = %72
  store i32 0, i32* %4, align 4
  br label %98

87:                                               ; preds = %85
  %88 = load %struct.dst_node*, %struct.dst_node** %5, align 8
  %89 = getelementptr inbounds %struct.dst_node, %struct.dst_node* %88, i32 0, i32 1
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %89, align 8
  %91 = load i32, i32* @FMODE_READ, align 4
  %92 = load i32, i32* @FMODE_WRITE, align 4
  %93 = or i32 %91, %92
  %94 = call i32 @blkdev_put(%struct.TYPE_7__* %90, i32 %93)
  %95 = load %struct.dst_node*, %struct.dst_node** %5, align 8
  %96 = getelementptr inbounds %struct.dst_node, %struct.dst_node* %95, i32 0, i32 1
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %96, align 8
  %97 = load i32, i32* %8, align 4
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %87, %86, %39, %25
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @dst_lookup_device(i8*, i32*) #1

declare dso_local %struct.TYPE_7__* @open_by_devnum(i32, i32) #1

declare dso_local i64 @min_t(i32, i64, i64) #1

declare dso_local i32 @dst_node_init_listened(%struct.dst_node*, %struct.dst_export_ctl*) #1

declare dso_local i32 @blkdev_put(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
