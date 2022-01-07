; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_super.c_ocfs2_show_options.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_super.c_ocfs2_show_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.vfsmount = type { i32 }
%struct.ocfs2_super = type { i64, i64, i64, i32, i32, i32, i64* }

@OCFS2_MOUNT_HB_LOCAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c",_netdev,heartbeat=local\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c",heartbeat=none\00", align 1
@OCFS2_MOUNT_NOINTR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c",nointr\00", align 1
@OCFS2_MOUNT_DATA_WRITEBACK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c",data=writeback\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c",data=ordered\00", align 1
@OCFS2_MOUNT_BARRIER = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [11 x i8] c",barrier=1\00", align 1
@OCFS2_MOUNT_ERRORS_PANIC = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [14 x i8] c",errors=panic\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c",errors=remount-ro\00", align 1
@OCFS2_INVALID_SLOT = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [19 x i8] c",preferred_slot=%d\00", align 1
@OCFS2_DEFAULT_ATIME_QUANTUM = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [18 x i8] c",atime_quantum=%u\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c",commit=%u\00", align 1
@HZ = common dso_local global i32 0, align 4
@OCFS2_DEFAULT_LOCAL_ALLOC_SIZE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [15 x i8] c",localalloc=%d\00", align 1
@OCFS2_MOUNT_LOCALFLOCKS = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [14 x i8] c",localflocks,\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c",cluster_stack=%.*s\00", align 1
@OCFS2_STACK_LABEL_LEN = common dso_local global i32 0, align 4
@OCFS2_MOUNT_USRQUOTA = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [10 x i8] c",usrquota\00", align 1
@OCFS2_MOUNT_GRPQUOTA = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [10 x i8] c",grpquota\00", align 1
@OCFS2_MOUNT_NOUSERXATTR = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [14 x i8] c",nouser_xattr\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c",user_xattr\00", align 1
@OCFS2_MOUNT_INODE64 = common dso_local global i64 0, align 8
@.str.18 = private unnamed_addr constant [9 x i8] c",inode64\00", align 1
@OCFS2_MOUNT_POSIX_ACL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, %struct.vfsmount*)* @ocfs2_show_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_show_options(%struct.seq_file* %0, %struct.vfsmount* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.vfsmount*, align 8
  %5 = alloca %struct.ocfs2_super*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.vfsmount* %1, %struct.vfsmount** %4, align 8
  %8 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %9 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.ocfs2_super* @OCFS2_SB(i32 %10)
  store %struct.ocfs2_super* %11, %struct.ocfs2_super** %5, align 8
  %12 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %13 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @OCFS2_MOUNT_HB_LOCAL, align 8
  %17 = and i64 %15, %16
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %21 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %25

22:                                               ; preds = %2
  %23 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %24 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %23, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %22, %19
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* @OCFS2_MOUNT_NOINTR, align 8
  %28 = and i64 %26, %27
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %32 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %33

33:                                               ; preds = %30, %25
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* @OCFS2_MOUNT_DATA_WRITEBACK, align 8
  %36 = and i64 %34, %35
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %40 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %39, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %44

41:                                               ; preds = %33
  %42 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %43 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %42, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %38
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* @OCFS2_MOUNT_BARRIER, align 8
  %47 = and i64 %45, %46
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %51 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %50, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  br label %52

52:                                               ; preds = %49, %44
  %53 = load i64, i64* %6, align 8
  %54 = load i64, i64* @OCFS2_MOUNT_ERRORS_PANIC, align 8
  %55 = and i64 %53, %54
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %59 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %58, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  br label %63

60:                                               ; preds = %52
  %61 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %62 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %61, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  br label %63

63:                                               ; preds = %60, %57
  %64 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %65 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @OCFS2_INVALID_SLOT, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %63
  %70 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %71 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %72 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %70, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i64 %73)
  br label %75

75:                                               ; preds = %69, %63
  %76 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %77 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @OCFS2_DEFAULT_ATIME_QUANTUM, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %75
  %82 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %83 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %84 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %82, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i64 %85)
  br label %87

87:                                               ; preds = %81, %75
  %88 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %89 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %87
  %93 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %94 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %95 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @HZ, align 4
  %98 = sdiv i32 %96, %97
  %99 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %93, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 %98)
  br label %100

100:                                              ; preds = %92, %87
  %101 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %102 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %105 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 8
  %107 = sub nsw i32 20, %106
  %108 = ashr i32 %103, %107
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* @OCFS2_DEFAULT_LOCAL_ALLOC_SIZE, align 4
  %111 = icmp ne i32 %109, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %100
  %113 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %114 = load i32, i32* %7, align 4
  %115 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %113, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i32 %114)
  br label %116

116:                                              ; preds = %112, %100
  %117 = load i64, i64* %6, align 8
  %118 = load i64, i64* @OCFS2_MOUNT_LOCALFLOCKS, align 8
  %119 = and i64 %117, %118
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %116
  %122 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %123 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %122, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0))
  br label %124

124:                                              ; preds = %121, %116
  %125 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %126 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %125, i32 0, i32 6
  %127 = load i64*, i64** %126, align 8
  %128 = getelementptr inbounds i64, i64* %127, i64 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %124
  %132 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %133 = load i32, i32* @OCFS2_STACK_LABEL_LEN, align 4
  %134 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %135 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %134, i32 0, i32 6
  %136 = load i64*, i64** %135, align 8
  %137 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %132, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 %133, i64* %136)
  br label %138

138:                                              ; preds = %131, %124
  %139 = load i64, i64* %6, align 8
  %140 = load i64, i64* @OCFS2_MOUNT_USRQUOTA, align 8
  %141 = and i64 %139, %140
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %138
  %144 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %145 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %144, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0))
  br label %146

146:                                              ; preds = %143, %138
  %147 = load i64, i64* %6, align 8
  %148 = load i64, i64* @OCFS2_MOUNT_GRPQUOTA, align 8
  %149 = and i64 %147, %148
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %146
  %152 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %153 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %152, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0))
  br label %154

154:                                              ; preds = %151, %146
  %155 = load i64, i64* %6, align 8
  %156 = load i64, i64* @OCFS2_MOUNT_NOUSERXATTR, align 8
  %157 = and i64 %155, %156
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %154
  %160 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %161 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %160, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0))
  br label %165

162:                                              ; preds = %154
  %163 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %164 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %163, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0))
  br label %165

165:                                              ; preds = %162, %159
  %166 = load i64, i64* %6, align 8
  %167 = load i64, i64* @OCFS2_MOUNT_INODE64, align 8
  %168 = and i64 %166, %167
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %165
  %171 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %172 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %171, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0))
  br label %173

173:                                              ; preds = %170, %165
  ret i32 0
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
