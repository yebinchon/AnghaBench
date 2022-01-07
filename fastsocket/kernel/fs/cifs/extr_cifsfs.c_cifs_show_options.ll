; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifsfs.c_cifs_show_options.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifsfs.c_cifs_show_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.vfsmount = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.cifs_sb_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cifs_tcon = type { i32, i64, i64, i64, i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.sockaddr = type { i64 }
%struct.sockaddr_in = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.sockaddr_in6 = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c",unc=%s\00", align 1
@CIFS_MOUNT_MULTIUSER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c",multiuser\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c",username=%s\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c",domain=%s\00", align 1
@AF_UNSPEC = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [15 x i8] c",srcaddr=%pI6c\00", align 1
@AF_INET = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [14 x i8] c",srcaddr=%pI4\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c",srcaddr=BAD-AF:%i\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c",uid=%u\00", align 1
@CIFS_MOUNT_OVERR_UID = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c",forceuid\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c",noforceuid\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c",gid=%u\00", align 1
@CIFS_MOUNT_OVERR_GID = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [10 x i8] c",forcegid\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c",noforcegid\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c",file_mode=0%o,dir_mode=0%o\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c",seal\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c",nocase\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c",hard\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c",unix\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c",nounix\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c",prepath=%s\00", align 1
@CIFS_MOUNT_POSIX_PATHS = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [12 x i8] c",posixpaths\00", align 1
@CIFS_MOUNT_SET_UID = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [9 x i8] c",setuids\00", align 1
@CIFS_MOUNT_SERVER_INUM = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [11 x i8] c",serverino\00", align 1
@CIFS_MOUNT_RWPIDFORWARD = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [14 x i8] c",rwpidforward\00", align 1
@CIFS_MOUNT_NOPOSIXBRL = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [11 x i8] c",forcemand\00", align 1
@CIFS_MOUNT_NO_XATTR = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [14 x i8] c",nouser_xattr\00", align 1
@CIFS_MOUNT_MAP_SPECIAL_CHR = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [10 x i8] c",mapchars\00", align 1
@CIFS_MOUNT_UNX_EMUL = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [5 x i8] c",sfu\00", align 1
@CIFS_MOUNT_NO_BRL = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [7 x i8] c",nobrl\00", align 1
@CIFS_MOUNT_CIFS_ACL = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [9 x i8] c",cifsacl\00", align 1
@CIFS_MOUNT_DYNPERM = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [9 x i8] c",dynperm\00", align 1
@MS_POSIXACL = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [5 x i8] c",acl\00", align 1
@CIFS_MOUNT_MF_SYMLINKS = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [12 x i8] c",mfsymlinks\00", align 1
@CIFS_MOUNT_FSCACHE = common dso_local global i32 0, align 4
@.str.33 = private unnamed_addr constant [5 x i8] c",fsc\00", align 1
@CIFS_MOUNT_NOSSYNC = common dso_local global i32 0, align 4
@.str.34 = private unnamed_addr constant [14 x i8] c",nostrictsync\00", align 1
@CIFS_MOUNT_NO_PERM = common dso_local global i32 0, align 4
@.str.35 = private unnamed_addr constant [8 x i8] c",noperm\00", align 1
@CIFS_MOUNT_CIFS_BACKUPUID = common dso_local global i32 0, align 4
@.str.36 = private unnamed_addr constant [14 x i8] c",backupuid=%u\00", align 1
@CIFS_MOUNT_CIFS_BACKUPGID = common dso_local global i32 0, align 4
@.str.37 = private unnamed_addr constant [14 x i8] c",backupgid=%u\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c",rsize=%u\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c",wsize=%u\00", align 1
@.str.40 = private unnamed_addr constant [13 x i8] c",actimeo=%lu\00", align 1
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, %struct.vfsmount*)* @cifs_show_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_show_options(%struct.seq_file* %0, %struct.vfsmount* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.vfsmount*, align 8
  %5 = alloca %struct.cifs_sb_info*, align 8
  %6 = alloca %struct.cifs_tcon*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca %struct.sockaddr_in*, align 8
  %9 = alloca %struct.sockaddr_in6*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.vfsmount* %1, %struct.vfsmount** %4, align 8
  %10 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %11 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %10, i32 0, i32 0
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %13 = call %struct.cifs_sb_info* @CIFS_SB(%struct.TYPE_9__* %12)
  store %struct.cifs_sb_info* %13, %struct.cifs_sb_info** %5, align 8
  %14 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %15 = call %struct.cifs_tcon* @cifs_sb_master_tcon(%struct.cifs_sb_info* %14)
  store %struct.cifs_tcon* %15, %struct.cifs_tcon** %6, align 8
  %16 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %17 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %16, i32 0, i32 5
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = bitcast i32* %21 to %struct.sockaddr*
  store %struct.sockaddr* %22, %struct.sockaddr** %7, align 8
  %23 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %24 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %25 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %24, i32 0, i32 5
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = call i32 @cifs_show_security(%struct.seq_file* %23, %struct.TYPE_8__* %28)
  %30 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %31 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %32 = call i32 @cifs_show_cache_flavor(%struct.seq_file* %30, %struct.cifs_sb_info* %31)
  %33 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %34 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %35 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %39 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @CIFS_MOUNT_MULTIUSER, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %2
  %45 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %46 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %45, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %63

47:                                               ; preds = %2
  %48 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %49 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %48, i32 0, i32 5
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %47
  %55 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %56 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %57 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %56, i32 0, i32 5
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %55, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %54, %47
  br label %63

63:                                               ; preds = %62, %44
  %64 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %65 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %64, i32 0, i32 5
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %63
  %71 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %72 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %73 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %72, i32 0, i32 5
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %71, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %76)
  br label %78

78:                                               ; preds = %70, %63
  %79 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %80 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @AF_UNSPEC, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %120

84:                                               ; preds = %78
  %85 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %86 = bitcast %struct.sockaddr* %85 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %86, %struct.sockaddr_in** %8, align 8
  %87 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %88 = bitcast %struct.sockaddr* %87 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %88, %struct.sockaddr_in6** %9, align 8
  %89 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %90 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @AF_INET6, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %84
  %95 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %96 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %97 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %96, i32 0, i32 0
  %98 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %95, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32* %97)
  br label %119

99:                                               ; preds = %84
  %100 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %101 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @AF_INET, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %111

105:                                              ; preds = %99
  %106 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %107 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %108 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %106, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32* %109)
  br label %118

111:                                              ; preds = %99
  %112 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %113 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %114 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = trunc i64 %115 to i32
  %117 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %112, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %116)
  br label %118

118:                                              ; preds = %111, %105
  br label %119

119:                                              ; preds = %118, %94
  br label %120

120:                                              ; preds = %119, %78
  %121 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %122 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %123 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %121, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %124)
  %126 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %127 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @CIFS_MOUNT_OVERR_UID, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %120
  %133 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %134 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %133, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  br label %138

135:                                              ; preds = %120
  %136 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %137 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %136, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  br label %138

138:                                              ; preds = %135, %132
  %139 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %140 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %141 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %139, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i32 %142)
  %144 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %145 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @CIFS_MOUNT_OVERR_GID, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %138
  %151 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %152 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %151, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0))
  br label %156

153:                                              ; preds = %138
  %154 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %155 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %154, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  br label %156

156:                                              ; preds = %153, %150
  %157 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %158 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %159 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %158, i32 0, i32 5
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 2
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %161, align 8
  %163 = call i32 @cifs_show_address(%struct.seq_file* %157, %struct.TYPE_8__* %162)
  %164 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %165 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %177, label %168

168:                                              ; preds = %156
  %169 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %170 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %171 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %170, i32 0, i32 10
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %174 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %173, i32 0, i32 9
  %175 = load i32, i32* %174, align 4
  %176 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %169, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0), i32 %172, i32 %175)
  br label %177

177:                                              ; preds = %168, %156
  %178 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %179 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %178, i32 0, i32 4
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %177
  %183 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %184 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %183, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  br label %185

185:                                              ; preds = %182, %177
  %186 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %187 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %186, i32 0, i32 3
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %185
  %191 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %192 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %191, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0))
  br label %193

193:                                              ; preds = %190, %185
  %194 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %195 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %194, i32 0, i32 2
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %193
  %199 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %200 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %199, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0))
  br label %201

201:                                              ; preds = %198, %193
  %202 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %203 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %202, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %201
  %207 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %208 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %207, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0))
  br label %212

209:                                              ; preds = %201
  %210 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %211 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %210, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0))
  br label %212

212:                                              ; preds = %209, %206
  %213 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %214 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %213, i32 0, i32 3
  %215 = load i32, i32* %214, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %223

217:                                              ; preds = %212
  %218 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %219 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %220 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 4
  %222 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %218, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0), i32 %221)
  br label %223

223:                                              ; preds = %217, %212
  %224 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %225 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* @CIFS_MOUNT_POSIX_PATHS, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %233

230:                                              ; preds = %223
  %231 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %232 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %231, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0))
  br label %233

233:                                              ; preds = %230, %223
  %234 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %235 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* @CIFS_MOUNT_SET_UID, align 4
  %238 = and i32 %236, %237
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %243

240:                                              ; preds = %233
  %241 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %242 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %241, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0))
  br label %243

243:                                              ; preds = %240, %233
  %244 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %245 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* @CIFS_MOUNT_SERVER_INUM, align 4
  %248 = and i32 %246, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %253

250:                                              ; preds = %243
  %251 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %252 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %251, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0))
  br label %253

253:                                              ; preds = %250, %243
  %254 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %255 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = load i32, i32* @CIFS_MOUNT_RWPIDFORWARD, align 4
  %258 = and i32 %256, %257
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %263

260:                                              ; preds = %253
  %261 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %262 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %261, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i64 0, i64 0))
  br label %263

263:                                              ; preds = %260, %253
  %264 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %265 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = load i32, i32* @CIFS_MOUNT_NOPOSIXBRL, align 4
  %268 = and i32 %266, %267
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %273

270:                                              ; preds = %263
  %271 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %272 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %271, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i64 0, i64 0))
  br label %273

273:                                              ; preds = %270, %263
  %274 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %275 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 4
  %277 = load i32, i32* @CIFS_MOUNT_NO_XATTR, align 4
  %278 = and i32 %276, %277
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %283

280:                                              ; preds = %273
  %281 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %282 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %281, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0))
  br label %283

283:                                              ; preds = %280, %273
  %284 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %285 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 4
  %287 = load i32, i32* @CIFS_MOUNT_MAP_SPECIAL_CHR, align 4
  %288 = and i32 %286, %287
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %293

290:                                              ; preds = %283
  %291 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %292 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %291, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i64 0, i64 0))
  br label %293

293:                                              ; preds = %290, %283
  %294 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %295 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 4
  %297 = load i32, i32* @CIFS_MOUNT_UNX_EMUL, align 4
  %298 = and i32 %296, %297
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %303

300:                                              ; preds = %293
  %301 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %302 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %301, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0))
  br label %303

303:                                              ; preds = %300, %293
  %304 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %305 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 4
  %307 = load i32, i32* @CIFS_MOUNT_NO_BRL, align 4
  %308 = and i32 %306, %307
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %313

310:                                              ; preds = %303
  %311 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %312 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %311, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0))
  br label %313

313:                                              ; preds = %310, %303
  %314 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %315 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 4
  %317 = load i32, i32* @CIFS_MOUNT_CIFS_ACL, align 4
  %318 = and i32 %316, %317
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %323

320:                                              ; preds = %313
  %321 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %322 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %321, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i64 0, i64 0))
  br label %323

323:                                              ; preds = %320, %313
  %324 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %325 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 4
  %327 = load i32, i32* @CIFS_MOUNT_DYNPERM, align 4
  %328 = and i32 %326, %327
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %333

330:                                              ; preds = %323
  %331 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %332 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %331, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i64 0, i64 0))
  br label %333

333:                                              ; preds = %330, %323
  %334 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %335 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %334, i32 0, i32 0
  %336 = load %struct.TYPE_9__*, %struct.TYPE_9__** %335, align 8
  %337 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 4
  %339 = load i32, i32* @MS_POSIXACL, align 4
  %340 = and i32 %338, %339
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %345

342:                                              ; preds = %333
  %343 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %344 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %343, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0))
  br label %345

345:                                              ; preds = %342, %333
  %346 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %347 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 4
  %349 = load i32, i32* @CIFS_MOUNT_MF_SYMLINKS, align 4
  %350 = and i32 %348, %349
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %355

352:                                              ; preds = %345
  %353 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %354 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %353, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i64 0, i64 0))
  br label %355

355:                                              ; preds = %352, %345
  %356 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %357 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 4
  %359 = load i32, i32* @CIFS_MOUNT_FSCACHE, align 4
  %360 = and i32 %358, %359
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %365

362:                                              ; preds = %355
  %363 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %364 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %363, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0))
  br label %365

365:                                              ; preds = %362, %355
  %366 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %367 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %366, i32 0, i32 0
  %368 = load i32, i32* %367, align 4
  %369 = load i32, i32* @CIFS_MOUNT_NOSSYNC, align 4
  %370 = and i32 %368, %369
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %372, label %375

372:                                              ; preds = %365
  %373 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %374 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %373, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i64 0, i64 0))
  br label %375

375:                                              ; preds = %372, %365
  %376 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %377 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 4
  %379 = load i32, i32* @CIFS_MOUNT_NO_PERM, align 4
  %380 = and i32 %378, %379
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %382, label %385

382:                                              ; preds = %375
  %383 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %384 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %383, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i64 0, i64 0))
  br label %385

385:                                              ; preds = %382, %375
  %386 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %387 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %386, i32 0, i32 0
  %388 = load i32, i32* %387, align 4
  %389 = load i32, i32* @CIFS_MOUNT_CIFS_BACKUPUID, align 4
  %390 = and i32 %388, %389
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %392, label %398

392:                                              ; preds = %385
  %393 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %394 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %395 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %394, i32 0, i32 4
  %396 = load i32, i32* %395, align 4
  %397 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %393, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i64 0, i64 0), i32 %396)
  br label %398

398:                                              ; preds = %392, %385
  %399 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %400 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %399, i32 0, i32 0
  %401 = load i32, i32* %400, align 4
  %402 = load i32, i32* @CIFS_MOUNT_CIFS_BACKUPGID, align 4
  %403 = and i32 %401, %402
  %404 = icmp ne i32 %403, 0
  br i1 %404, label %405, label %411

405:                                              ; preds = %398
  %406 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %407 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %408 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %407, i32 0, i32 5
  %409 = load i32, i32* %408, align 4
  %410 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %406, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i64 0, i64 0), i32 %409)
  br label %411

411:                                              ; preds = %405, %398
  %412 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %413 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %414 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %413, i32 0, i32 6
  %415 = load i32, i32* %414, align 4
  %416 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %412, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i64 0, i64 0), i32 %415)
  %417 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %418 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %419 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %418, i32 0, i32 7
  %420 = load i32, i32* %419, align 4
  %421 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %417, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i64 0, i64 0), i32 %420)
  %422 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %423 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %424 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %423, i32 0, i32 8
  %425 = load i32, i32* %424, align 4
  %426 = load i32, i32* @HZ, align 4
  %427 = sdiv i32 %425, %426
  %428 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %422, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.40, i64 0, i64 0), i32 %427)
  ret i32 0
}

declare dso_local %struct.cifs_sb_info* @CIFS_SB(%struct.TYPE_9__*) #1

declare dso_local %struct.cifs_tcon* @cifs_sb_master_tcon(%struct.cifs_sb_info*) #1

declare dso_local i32 @cifs_show_security(%struct.seq_file*, %struct.TYPE_8__*) #1

declare dso_local i32 @cifs_show_cache_flavor(%struct.seq_file*, %struct.cifs_sb_info*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i32 @cifs_show_address(%struct.seq_file*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
