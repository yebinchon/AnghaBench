; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_super.c_ubifs_show_options.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_super.c_ubifs_show_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.vfsmount = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.ubifs_info* }
%struct.ubifs_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [14 x i8] c",fast_unmount\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c",norm_unmount\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c",bulk_read\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c",no_bulk_read\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c",chk_data_crc\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c",no_chk_data_crc\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c",compr=%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, %struct.vfsmount*)* @ubifs_show_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ubifs_show_options(%struct.seq_file* %0, %struct.vfsmount* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.vfsmount*, align 8
  %5 = alloca %struct.ubifs_info*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.vfsmount* %1, %struct.vfsmount** %4, align 8
  %6 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %7 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  store %struct.ubifs_info* %10, %struct.ubifs_info** %5, align 8
  %11 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %12 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %18 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %29

19:                                               ; preds = %2
  %20 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %21 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %27 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %26, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %25, %19
  br label %29

29:                                               ; preds = %28, %16
  %30 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %31 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %37 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %36, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %48

38:                                               ; preds = %29
  %39 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %40 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %46 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %47

47:                                               ; preds = %44, %38
  br label %48

48:                                               ; preds = %47, %35
  %49 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %50 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %52, 2
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %56 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %55, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %67

57:                                               ; preds = %48
  %58 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %59 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %65 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %64, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  br label %66

66:                                               ; preds = %63, %57
  br label %67

67:                                               ; preds = %66, %54
  %68 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %69 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %67
  %74 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %75 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %76 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @ubifs_compr_name(i32 %78)
  %80 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %74, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 %79)
  br label %81

81:                                               ; preds = %73, %67
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i32 @ubifs_compr_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
