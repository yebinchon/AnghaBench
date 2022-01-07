; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hfs/extr_super.c_hfs_show_options.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hfs/extr_super.c_hfs_show_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.vfsmount = type { i32 }
%struct.hfs_sb_info = type { i64, i64, i32, i32, i64, %struct.TYPE_4__*, %struct.TYPE_3__*, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c",creator=%.4s\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c",type=%.4s\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c",uid=%u,gid=%u\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c",file_umask=%o\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c",dir_umask=%o\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c",part=%u\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c",session=%u\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c",codepage=%s\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c",iocharset=%s\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c",quiet\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, %struct.vfsmount*)* @hfs_show_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfs_show_options(%struct.seq_file* %0, %struct.vfsmount* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.vfsmount*, align 8
  %5 = alloca %struct.hfs_sb_info*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.vfsmount* %1, %struct.vfsmount** %4, align 8
  %6 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %7 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.hfs_sb_info* @HFS_SB(i32 %8)
  store %struct.hfs_sb_info* %9, %struct.hfs_sb_info** %5, align 8
  %10 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %5, align 8
  %11 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i64 @cpu_to_be32(i32 1061109567)
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %17 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %5, align 8
  %18 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %17, i32 0, i32 0
  %19 = bitcast i64* %18 to i8*
  %20 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %19)
  br label %21

21:                                               ; preds = %15, %2
  %22 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %5, align 8
  %23 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = call i64 @cpu_to_be32(i32 1061109567)
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %29 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %5, align 8
  %30 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %29, i32 0, i32 1
  %31 = bitcast i64* %30 to i8*
  %32 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  br label %33

33:                                               ; preds = %27, %21
  %34 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %35 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %5, align 8
  %36 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %35, i32 0, i32 10
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %5, align 8
  %39 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %38, i32 0, i32 9
  %40 = load i32, i32* %39, align 8
  %41 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %34, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %37, i32 %40)
  %42 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %5, align 8
  %43 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 91
  br i1 %45, label %46, label %52

46:                                               ; preds = %33
  %47 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %48 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %5, align 8
  %49 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %47, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %46, %33
  %53 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %5, align 8
  %54 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 18
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %59 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %5, align 8
  %60 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %58, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %57, %52
  %64 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %5, align 8
  %65 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %64, i32 0, i32 8
  %66 = load i32, i32* %65, align 4
  %67 = icmp sge i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %70 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %5, align 8
  %71 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %70, i32 0, i32 8
  %72 = load i32, i32* %71, align 4
  %73 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %69, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %68, %63
  %75 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %5, align 8
  %76 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %75, i32 0, i32 7
  %77 = load i32, i32* %76, align 8
  %78 = icmp sge i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %81 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %5, align 8
  %82 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %81, i32 0, i32 7
  %83 = load i32, i32* %82, align 8
  %84 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %80, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %79, %74
  %86 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %5, align 8
  %87 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %86, i32 0, i32 6
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = icmp ne %struct.TYPE_3__* %88, null
  br i1 %89, label %90, label %98

90:                                               ; preds = %85
  %91 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %92 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %5, align 8
  %93 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %92, i32 0, i32 6
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %91, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32 %96)
  br label %98

98:                                               ; preds = %90, %85
  %99 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %5, align 8
  %100 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %99, i32 0, i32 5
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = icmp ne %struct.TYPE_4__* %101, null
  br i1 %102, label %103, label %111

103:                                              ; preds = %98
  %104 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %105 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %5, align 8
  %106 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %105, i32 0, i32 5
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %104, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 %109)
  br label %111

111:                                              ; preds = %103, %98
  %112 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %5, align 8
  %113 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %112, i32 0, i32 4
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %111
  %117 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %118 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %117, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  br label %119

119:                                              ; preds = %116, %111
  ret i32 0
}

declare dso_local %struct.hfs_sb_info* @HFS_SB(i32) #1

declare dso_local i64 @cpu_to_be32(i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
