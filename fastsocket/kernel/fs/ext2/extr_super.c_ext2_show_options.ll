; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_super.c_ext2_show_options.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_super.c_ext2_show_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.vfsmount = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.ext2_sb_info = type { i32, i32, i32, i32, %struct.ext2_super_block* }
%struct.ext2_super_block = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c",sb=%lu\00", align 1
@MINIX_DF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c",minixdf\00", align 1
@GRPID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c",grpid\00", align 1
@EXT2_DEFM_BSDGROUPS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c",nogrpid\00", align 1
@EXT2_DEF_RESUID = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c",resuid=%u\00", align 1
@EXT2_DEF_RESGID = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c",resgid=%u\00", align 1
@ERRORS_RO = common dso_local global i32 0, align 4
@EXT2_ERRORS_PANIC = common dso_local global i32 0, align 4
@EXT2_ERRORS_CONTINUE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c",errors=remount-ro\00", align 1
@ERRORS_CONT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [17 x i8] c",errors=continue\00", align 1
@ERRORS_PANIC = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c",errors=panic\00", align 1
@NO_UID32 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [9 x i8] c",nouid32\00", align 1
@DEBUG = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c",debug\00", align 1
@OLDALLOC = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [10 x i8] c",oldalloc\00", align 1
@NOBH = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [6 x i8] c",nobh\00", align 1
@RESERVATION = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [15 x i8] c",noreservation\00", align 1
@EXT2_DEFM_ACL = common dso_local global i64 0, align 8
@EXT2_DEFM_XATTR_USER = common dso_local global i64 0, align 8
@EXT2_MOUNT_GRPQUOTA = common dso_local global i32 0, align 4
@EXT2_MOUNT_USRQUOTA = common dso_local global i32 0, align 4
@EXT2_MOUNT_XIP = common dso_local global i32 0, align 4
@POSIX_ACL = common dso_local global i32 0, align 4
@XATTR_USER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, %struct.vfsmount*)* @ext2_show_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2_show_options(%struct.seq_file* %0, %struct.vfsmount* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.vfsmount*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.ext2_sb_info*, align 8
  %7 = alloca %struct.ext2_super_block*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.vfsmount* %1, %struct.vfsmount** %4, align 8
  %10 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %11 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %10, i32 0, i32 0
  %12 = load %struct.super_block*, %struct.super_block** %11, align 8
  store %struct.super_block* %12, %struct.super_block** %5, align 8
  %13 = load %struct.super_block*, %struct.super_block** %5, align 8
  %14 = call %struct.ext2_sb_info* @EXT2_SB(%struct.super_block* %13)
  store %struct.ext2_sb_info* %14, %struct.ext2_sb_info** %6, align 8
  %15 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %6, align 8
  %16 = getelementptr inbounds %struct.ext2_sb_info, %struct.ext2_sb_info* %15, i32 0, i32 4
  %17 = load %struct.ext2_super_block*, %struct.ext2_super_block** %16, align 8
  store %struct.ext2_super_block* %17, %struct.ext2_super_block** %7, align 8
  %18 = load %struct.ext2_super_block*, %struct.ext2_super_block** %7, align 8
  %19 = getelementptr inbounds %struct.ext2_super_block, %struct.ext2_super_block* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @le32_to_cpu(i32 %20)
  store i64 %21, i64* %8, align 8
  %22 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %6, align 8
  %23 = getelementptr inbounds %struct.ext2_sb_info, %struct.ext2_sb_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 1
  br i1 %25, label %26, label %32

26:                                               ; preds = %2
  %27 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %28 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %6, align 8
  %29 = getelementptr inbounds %struct.ext2_sb_info, %struct.ext2_sb_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @seq_printf(%struct.seq_file* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %26, %2
  %33 = load %struct.super_block*, %struct.super_block** %5, align 8
  %34 = load i32, i32* @MINIX_DF, align 4
  %35 = call i64 @test_opt(%struct.super_block* %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %39 = call i32 @seq_puts(%struct.seq_file* %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %32
  %41 = load %struct.super_block*, %struct.super_block** %5, align 8
  %42 = load i32, i32* @GRPID, align 4
  %43 = call i64 @test_opt(%struct.super_block* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %47 = call i32 @seq_puts(%struct.seq_file* %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %48

48:                                               ; preds = %45, %40
  %49 = load %struct.super_block*, %struct.super_block** %5, align 8
  %50 = load i32, i32* @GRPID, align 4
  %51 = call i64 @test_opt(%struct.super_block* %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %48
  %54 = load i64, i64* %8, align 8
  %55 = load i64, i64* @EXT2_DEFM_BSDGROUPS, align 8
  %56 = and i64 %54, %55
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %60 = call i32 @seq_puts(%struct.seq_file* %59, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %61

61:                                               ; preds = %58, %53, %48
  %62 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %6, align 8
  %63 = getelementptr inbounds %struct.ext2_sb_info, %struct.ext2_sb_info* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @EXT2_DEF_RESUID, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %74, label %67

67:                                               ; preds = %61
  %68 = load %struct.ext2_super_block*, %struct.ext2_super_block** %7, align 8
  %69 = getelementptr inbounds %struct.ext2_super_block, %struct.ext2_super_block* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @le16_to_cpu(i32 %70)
  %72 = load i32, i32* @EXT2_DEF_RESUID, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %67, %61
  %75 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %76 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %6, align 8
  %77 = getelementptr inbounds %struct.ext2_sb_info, %struct.ext2_sb_info* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @seq_printf(%struct.seq_file* %75, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %74, %67
  %81 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %6, align 8
  %82 = getelementptr inbounds %struct.ext2_sb_info, %struct.ext2_sb_info* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @EXT2_DEF_RESGID, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %93, label %86

86:                                               ; preds = %80
  %87 = load %struct.ext2_super_block*, %struct.ext2_super_block** %7, align 8
  %88 = getelementptr inbounds %struct.ext2_super_block, %struct.ext2_super_block* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @le16_to_cpu(i32 %89)
  %91 = load i32, i32* @EXT2_DEF_RESGID, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %86, %80
  %94 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %95 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %6, align 8
  %96 = getelementptr inbounds %struct.ext2_sb_info, %struct.ext2_sb_info* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @seq_printf(%struct.seq_file* %94, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %97)
  br label %99

99:                                               ; preds = %93, %86
  %100 = load %struct.super_block*, %struct.super_block** %5, align 8
  %101 = load i32, i32* @ERRORS_RO, align 4
  %102 = call i64 @test_opt(%struct.super_block* %100, i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %120

104:                                              ; preds = %99
  %105 = load %struct.ext2_super_block*, %struct.ext2_super_block** %7, align 8
  %106 = getelementptr inbounds %struct.ext2_super_block, %struct.ext2_super_block* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @le16_to_cpu(i32 %107)
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* @EXT2_ERRORS_PANIC, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %116, label %112

112:                                              ; preds = %104
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* @EXT2_ERRORS_CONTINUE, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %112, %104
  %117 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %118 = call i32 @seq_puts(%struct.seq_file* %117, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  br label %119

119:                                              ; preds = %116, %112
  br label %120

120:                                              ; preds = %119, %99
  %121 = load %struct.super_block*, %struct.super_block** %5, align 8
  %122 = load i32, i32* @ERRORS_CONT, align 4
  %123 = call i64 @test_opt(%struct.super_block* %121, i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %120
  %126 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %127 = call i32 @seq_puts(%struct.seq_file* %126, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  br label %128

128:                                              ; preds = %125, %120
  %129 = load %struct.super_block*, %struct.super_block** %5, align 8
  %130 = load i32, i32* @ERRORS_PANIC, align 4
  %131 = call i64 @test_opt(%struct.super_block* %129, i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %128
  %134 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %135 = call i32 @seq_puts(%struct.seq_file* %134, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  br label %136

136:                                              ; preds = %133, %128
  %137 = load %struct.super_block*, %struct.super_block** %5, align 8
  %138 = load i32, i32* @NO_UID32, align 4
  %139 = call i64 @test_opt(%struct.super_block* %137, i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %136
  %142 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %143 = call i32 @seq_puts(%struct.seq_file* %142, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  br label %144

144:                                              ; preds = %141, %136
  %145 = load %struct.super_block*, %struct.super_block** %5, align 8
  %146 = load i32, i32* @DEBUG, align 4
  %147 = call i64 @test_opt(%struct.super_block* %145, i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %144
  %150 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %151 = call i32 @seq_puts(%struct.seq_file* %150, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  br label %152

152:                                              ; preds = %149, %144
  %153 = load %struct.super_block*, %struct.super_block** %5, align 8
  %154 = load i32, i32* @OLDALLOC, align 4
  %155 = call i64 @test_opt(%struct.super_block* %153, i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %152
  %158 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %159 = call i32 @seq_puts(%struct.seq_file* %158, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0))
  br label %160

160:                                              ; preds = %157, %152
  %161 = load %struct.super_block*, %struct.super_block** %5, align 8
  %162 = load i32, i32* @NOBH, align 4
  %163 = call i64 @test_opt(%struct.super_block* %161, i32 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %160
  %166 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %167 = call i32 @seq_puts(%struct.seq_file* %166, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  br label %168

168:                                              ; preds = %165, %160
  %169 = load %struct.super_block*, %struct.super_block** %5, align 8
  %170 = load i32, i32* @RESERVATION, align 4
  %171 = call i64 @test_opt(%struct.super_block* %169, i32 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %176, label %173

173:                                              ; preds = %168
  %174 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %175 = call i32 @seq_puts(%struct.seq_file* %174, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0))
  br label %176

176:                                              ; preds = %173, %168
  ret i32 0
}

declare dso_local %struct.ext2_sb_info* @EXT2_SB(%struct.super_block*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

declare dso_local i64 @test_opt(%struct.super_block*, i32) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
