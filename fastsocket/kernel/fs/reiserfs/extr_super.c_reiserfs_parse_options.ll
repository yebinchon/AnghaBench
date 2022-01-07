; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_super.c_reiserfs_parse_options.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_super.c_reiserfs_parse_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_8__ = type { i8*, i8, i32, i32, i8*, i32* }

@.str = private unnamed_addr constant [6 x i8] c"tails\00", align 1
@tails = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"notail\00", align 1
@REISERFS_LARGETAIL = common dso_local global i32 0, align 4
@REISERFS_SMALLTAIL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"conv\00", align 1
@REISERFS_CONVERT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"attrs\00", align 1
@REISERFS_ATTRS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"noattrs\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"expose_privroot\00", align 1
@REISERFS_EXPOSE_PRIVROOT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c"user_xattr\00", align 1
@REISERFS_UNSUPPORTED_OPT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"nouser_xattr\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"acl\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"noacl\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"nolog\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"replayonly\00", align 1
@REPLAYONLY = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [16 x i8] c"block-allocator\00", align 1
@balloc = common dso_local global i32* null, align 8
@.str.13 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@logging_mode = common dso_local global i32* null, align 8
@.str.14 = private unnamed_addr constant [8 x i8] c"barrier\00", align 1
@barrier_mode = common dso_local global i32* null, align 8
@.str.15 = private unnamed_addr constant [7 x i8] c"resize\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"jdev\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"nolargeio\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"commit\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"usrquota\00", align 1
@REISERFS_QUOTA = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [9 x i8] c"grpquota\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"noquota\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"errors\00", align 1
@error_actions = common dso_local global i32* null, align 8
@.str.23 = private unnamed_addr constant [10 x i8] c"usrjquota\00", align 1
@REISERFS_OPT_ALLOWEMPTY = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [10 x i8] c"grpjquota\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"jqfmt\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"super-6507\00", align 1
@.str.28 = private unnamed_addr constant [27 x i8] c"bad value %s for -oresize\0A\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"super-6508\00", align 1
@.str.30 = private unnamed_addr constant [27 x i8] c"bad value %s for -ocommit\0A\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"super-6509\00", align 1
@.str.32 = private unnamed_addr constant [40 x i8] c"nolargeio option is no longer supported\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"super-6510\00", align 1
@.str.34 = private unnamed_addr constant [46 x i8] c"journal device was already specified to be %s\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"reiserfs-2503\00", align 1
@.str.36 = private unnamed_addr constant [39 x i8] c"journaled quota options not supported.\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@GRPQUOTA = common dso_local global i64 0, align 8
@QFMT_VFS_OLD = common dso_local global i32 0, align 4
@QFMT_VFS_V0 = common dso_local global i32 0, align 4
@REISERFS_POSIXACL = common dso_local global i32 0, align 4
@REISERFS_XATTRS_USER = common dso_local global i32 0, align 4
@USRQUOTA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i8*, i64*, i64*, i8**, i32*, i8**, i32*)* @reiserfs_parse_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reiserfs_parse_options(%struct.super_block* %0, i8* %1, i64* %2, i64* %3, i8** %4, i32* %5, i8** %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.super_block*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8**, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca [27 x %struct.TYPE_8__], align 16
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  store %struct.super_block* %0, %struct.super_block** %10, align 8
  store i8* %1, i8** %11, align 8
  store i64* %2, i64** %12, align 8
  store i64* %3, i64** %13, align 8
  store i8** %4, i8*** %14, align 8
  store i32* %5, i32** %15, align 8
  store i8** %6, i8*** %16, align 8
  store i32* %7, i32** %17, align 8
  store i8* null, i8** %19, align 8
  %25 = getelementptr inbounds [27 x %struct.TYPE_8__], [27 x %struct.TYPE_8__]* %21, i64 0, i64 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  store i8 116, i8* %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 2
  store i32 0, i32* %28, align 4
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 3
  store i32 0, i32* %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 4
  store i8* null, i8** %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 5
  %32 = load i32*, i32** @tails, align 8
  store i32* %32, i32** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i64 1
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  store i8 0, i8* %35, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 2
  %37 = load i32, i32* @REISERFS_LARGETAIL, align 4
  %38 = shl i32 1, %37
  %39 = load i32, i32* @REISERFS_SMALLTAIL, align 4
  %40 = shl i32 1, %39
  %41 = or i32 %38, %40
  store i32 %41, i32* %36, align 4
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 3
  store i32 0, i32* %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 4
  store i8* null, i8** %43, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 5
  store i32* null, i32** %44, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i64 1
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %46, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  store i8 0, i8* %47, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 2
  store i32 0, i32* %48, align 4
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 3
  %50 = load i32, i32* @REISERFS_CONVERT, align 4
  %51 = shl i32 1, %50
  store i32 %51, i32* %49, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 4
  store i8* null, i8** %52, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 5
  store i32* null, i32** %53, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i64 1
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %55, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  store i8 0, i8* %56, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 2
  store i32 0, i32* %57, align 4
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 3
  %59 = load i32, i32* @REISERFS_ATTRS, align 4
  %60 = shl i32 1, %59
  store i32 %60, i32* %58, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 4
  store i8* null, i8** %61, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 5
  store i32* null, i32** %62, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i64 1
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %64, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  store i8 0, i8* %65, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 2
  %67 = load i32, i32* @REISERFS_ATTRS, align 4
  %68 = shl i32 1, %67
  store i32 %68, i32* %66, align 4
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 3
  store i32 0, i32* %69, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 4
  store i8* null, i8** %70, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 5
  store i32* null, i32** %71, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i64 1
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8** %73, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  store i8 0, i8* %74, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 2
  store i32 0, i32* %75, align 4
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 3
  %77 = load i32, i32* @REISERFS_EXPOSE_PRIVROOT, align 4
  %78 = shl i32 1, %77
  store i32 %78, i32* %76, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 4
  store i8* null, i8** %79, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 5
  store i32* null, i32** %80, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i64 1
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8** %82, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  store i8 0, i8* %83, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 2
  store i32 0, i32* %84, align 4
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 3
  %86 = load i32, i32* @REISERFS_UNSUPPORTED_OPT, align 4
  %87 = shl i32 1, %86
  store i32 %87, i32* %85, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 4
  store i8* null, i8** %88, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 5
  store i32* null, i32** %89, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i64 1
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8** %91, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  store i8 0, i8* %92, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 2
  %94 = load i32, i32* @REISERFS_UNSUPPORTED_OPT, align 4
  %95 = shl i32 1, %94
  store i32 %95, i32* %93, align 4
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 3
  store i32 0, i32* %96, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 4
  store i8* null, i8** %97, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 5
  store i32* null, i32** %98, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i64 1
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8** %100, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  store i8 0, i8* %101, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 2
  store i32 0, i32* %102, align 4
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 3
  %104 = load i32, i32* @REISERFS_UNSUPPORTED_OPT, align 4
  %105 = shl i32 1, %104
  store i32 %105, i32* %103, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 4
  store i8* null, i8** %106, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 5
  store i32* null, i32** %107, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i64 1
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8** %109, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 1
  store i8 0, i8* %110, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 2
  %112 = load i32, i32* @REISERFS_UNSUPPORTED_OPT, align 4
  %113 = shl i32 1, %112
  store i32 %113, i32* %111, align 4
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 3
  store i32 0, i32* %114, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 4
  store i8* null, i8** %115, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 5
  store i32* null, i32** %116, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i64 1
  %118 = bitcast %struct.TYPE_8__* %117 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %118, i8 0, i64 40, i1 false)
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 4
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8** %119, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i64 1
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i8** %121, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 1
  store i8 0, i8* %122, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 2
  store i32 0, i32* %123, align 4
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 3
  %125 = load i32, i32* @REPLAYONLY, align 4
  %126 = shl i32 1, %125
  store i32 %126, i32* %124, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 4
  store i8* null, i8** %127, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 5
  store i32* null, i32** %128, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i64 1
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i8** %130, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 1
  store i8 97, i8* %131, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 2
  store i32 0, i32* %132, align 4
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 3
  store i32 0, i32* %133, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 4
  store i8* null, i8** %134, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 5
  %136 = load i32*, i32** @balloc, align 8
  store i32* %136, i32** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i64 1
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8** %138, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 1
  store i8 100, i8* %139, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 2
  store i32 0, i32* %140, align 4
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 3
  store i32 0, i32* %141, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 4
  store i8* null, i8** %142, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 5
  %144 = load i32*, i32** @logging_mode, align 8
  store i32* %144, i32** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i64 1
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i8** %146, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 1
  store i8 98, i8* %147, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 2
  store i32 0, i32* %148, align 4
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 3
  store i32 0, i32* %149, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 4
  store i8* null, i8** %150, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 5
  %152 = load i32*, i32** @barrier_mode, align 8
  store i32* %152, i32** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i64 1
  %154 = bitcast %struct.TYPE_8__* %153 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %154, i8 0, i64 40, i1 false)
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i8** %155, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 1
  store i8 114, i8* %156, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i64 1
  %158 = bitcast %struct.TYPE_8__* %157 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %158, i8 0, i64 40, i1 false)
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i8** %159, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 1
  store i8 106, i8* %160, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i64 1
  %162 = bitcast %struct.TYPE_8__* %161 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %162, i8 0, i64 40, i1 false)
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i8** %163, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 1
  store i8 119, i8* %164, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i64 1
  %166 = bitcast %struct.TYPE_8__* %165 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %166, i8 0, i64 40, i1 false)
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i8** %167, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 1
  store i8 99, i8* %168, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i64 1
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), i8** %170, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 1
  store i8 0, i8* %171, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 2
  store i32 0, i32* %172, align 4
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 3
  %174 = load i32, i32* @REISERFS_QUOTA, align 4
  %175 = shl i32 1, %174
  store i32 %175, i32* %173, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 4
  store i8* null, i8** %176, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 5
  store i32* null, i32** %177, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i64 1
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0), i8** %179, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 1
  store i8 0, i8* %180, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 2
  store i32 0, i32* %181, align 4
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 3
  %183 = load i32, i32* @REISERFS_QUOTA, align 4
  %184 = shl i32 1, %183
  store i32 %184, i32* %182, align 8
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 4
  store i8* null, i8** %185, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 5
  store i32* null, i32** %186, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i64 1
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0), i8** %188, align 8
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 1
  store i8 0, i8* %189, align 8
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 2
  %191 = load i32, i32* @REISERFS_QUOTA, align 4
  %192 = shl i32 1, %191
  store i32 %192, i32* %190, align 4
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 3
  store i32 0, i32* %193, align 8
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 4
  store i8* null, i8** %194, align 8
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 5
  store i32* null, i32** %195, align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i64 1
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0), i8** %197, align 8
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 1
  store i8 101, i8* %198, align 8
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 2
  store i32 0, i32* %199, align 4
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 3
  store i32 0, i32* %200, align 8
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 4
  store i8* null, i8** %201, align 8
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 5
  %203 = load i32*, i32** @error_actions, align 8
  store i32* %203, i32** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i64 1
  %205 = bitcast %struct.TYPE_8__* %204 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %205, i8 0, i64 40, i1 false)
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0), i8** %206, align 8
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 1
  %208 = load i32, i32* @REISERFS_OPT_ALLOWEMPTY, align 4
  %209 = shl i32 1, %208
  %210 = or i32 117, %209
  %211 = trunc i32 %210 to i8
  store i8 %211, i8* %207, align 8
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i64 1
  %213 = bitcast %struct.TYPE_8__* %212 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %213, i8 0, i64 40, i1 false)
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0), i8** %214, align 8
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 1
  %216 = load i32, i32* @REISERFS_OPT_ALLOWEMPTY, align 4
  %217 = shl i32 1, %216
  %218 = or i32 103, %217
  %219 = trunc i32 %218 to i8
  store i8 %219, i8* %215, align 8
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i64 1
  %221 = bitcast %struct.TYPE_8__* %220 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %221, i8 0, i64 40, i1 false)
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), i8** %222, align 8
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 1
  store i8 102, i8* %223, align 8
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i64 1
  %225 = bitcast %struct.TYPE_8__* %224 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %225, i8 0, i64 40, i1 false)
  %226 = load i64*, i64** %13, align 8
  store i64 0, i64* %226, align 8
  %227 = load i8*, i8** %11, align 8
  %228 = icmp ne i8* %227, null
  br i1 %228, label %229, label %233

229:                                              ; preds = %8
  %230 = load i8*, i8** %11, align 8
  %231 = load i8, i8* %230, align 1
  %232 = icmp ne i8 %231, 0
  br i1 %232, label %234, label %233

233:                                              ; preds = %229, %8
  store i32 1, i32* %9, align 4
  br label %349

234:                                              ; preds = %229
  %235 = load i8*, i8** %11, align 8
  store i8* %235, i8** %20, align 8
  br label %236

236:                                              ; preds = %347, %234
  %237 = load i8*, i8** %20, align 8
  %238 = icmp ne i8* %237, null
  br i1 %238, label %239, label %348

239:                                              ; preds = %236
  %240 = load %struct.super_block*, %struct.super_block** %10, align 8
  %241 = getelementptr inbounds [27 x %struct.TYPE_8__], [27 x %struct.TYPE_8__]* %21, i64 0, i64 0
  %242 = load i64*, i64** %12, align 8
  %243 = call i32 @reiserfs_getopt(%struct.super_block* %240, i8** %20, %struct.TYPE_8__* %241, i8** %19, i64* %242)
  store i32 %243, i32* %18, align 4
  %244 = load i32, i32* %18, align 4
  %245 = icmp eq i32 %244, -1
  br i1 %245, label %246, label %247

246:                                              ; preds = %239
  store i32 0, i32* %9, align 4
  br label %349

247:                                              ; preds = %239
  %248 = load i32, i32* %18, align 4
  %249 = icmp eq i32 %248, 114
  br i1 %249, label %250, label %281

250:                                              ; preds = %247
  store i8* null, i8** %22, align 8
  %251 = load i8*, i8** %19, align 8
  %252 = call i64 @strcmp(i8* %251, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0))
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %267, label %254

254:                                              ; preds = %250
  %255 = load %struct.super_block*, %struct.super_block** %10, align 8
  %256 = getelementptr inbounds %struct.super_block, %struct.super_block* %255, i32 0, i32 1
  %257 = load %struct.TYPE_7__*, %struct.TYPE_7__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %257, i32 0, i32 0
  %259 = load %struct.TYPE_6__*, %struct.TYPE_6__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = load %struct.super_block*, %struct.super_block** %10, align 8
  %263 = getelementptr inbounds %struct.super_block, %struct.super_block* %262, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = lshr i64 %261, %264
  %266 = load i64*, i64** %13, align 8
  store i64 %265, i64* %266, align 8
  br label %280

267:                                              ; preds = %250
  %268 = load i8*, i8** %19, align 8
  %269 = call i64 @simple_strtoul(i8* %268, i8** %22, i32 0)
  %270 = load i64*, i64** %13, align 8
  store i64 %269, i64* %270, align 8
  %271 = load i8*, i8** %22, align 8
  %272 = load i8, i8* %271, align 1
  %273 = sext i8 %272 to i32
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %279

275:                                              ; preds = %267
  %276 = load %struct.super_block*, %struct.super_block** %10, align 8
  %277 = load i8*, i8** %19, align 8
  %278 = call i32 (%struct.super_block*, i8*, i8*, ...) @reiserfs_warning(%struct.super_block* %276, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.28, i64 0, i64 0), i8* %277)
  store i32 0, i32* %9, align 4
  br label %349

279:                                              ; preds = %267
  br label %280

280:                                              ; preds = %279, %254
  br label %281

281:                                              ; preds = %280, %247
  %282 = load i32, i32* %18, align 4
  %283 = icmp eq i32 %282, 99
  br i1 %283, label %284, label %302

284:                                              ; preds = %281
  store i8* null, i8** %23, align 8
  %285 = load i8*, i8** %19, align 8
  %286 = call i64 @simple_strtoul(i8* %285, i8** %23, i32 0)
  store i64 %286, i64* %24, align 8
  %287 = load i8*, i8** %23, align 8
  %288 = load i8, i8* %287, align 1
  %289 = sext i8 %288 to i32
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %294, label %291

291:                                              ; preds = %284
  %292 = load i64, i64* %24, align 8
  %293 = icmp uge i64 %292, 4294967295
  br i1 %293, label %294, label %298

294:                                              ; preds = %291, %284
  %295 = load %struct.super_block*, %struct.super_block** %10, align 8
  %296 = load i8*, i8** %19, align 8
  %297 = call i32 (%struct.super_block*, i8*, i8*, ...) @reiserfs_warning(%struct.super_block* %295, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.30, i64 0, i64 0), i8* %296)
  store i32 0, i32* %9, align 4
  br label %349

298:                                              ; preds = %291
  %299 = load i64, i64* %24, align 8
  %300 = trunc i64 %299 to i32
  %301 = load i32*, i32** %15, align 8
  store i32 %300, i32* %301, align 4
  br label %302

302:                                              ; preds = %298, %281
  %303 = load i32, i32* %18, align 4
  %304 = icmp eq i32 %303, 119
  br i1 %304, label %305, label %308

305:                                              ; preds = %302
  %306 = load %struct.super_block*, %struct.super_block** %10, align 8
  %307 = call i32 (%struct.super_block*, i8*, i8*, ...) @reiserfs_warning(%struct.super_block* %306, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.32, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %349

308:                                              ; preds = %302
  %309 = load i32, i32* %18, align 4
  %310 = icmp eq i32 %309, 106
  br i1 %310, label %311, label %335

311:                                              ; preds = %308
  %312 = load i8*, i8** %19, align 8
  %313 = icmp ne i8* %312, null
  br i1 %313, label %314, label %334

314:                                              ; preds = %311
  %315 = load i8*, i8** %19, align 8
  %316 = load i8, i8* %315, align 1
  %317 = sext i8 %316 to i32
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %334

319:                                              ; preds = %314
  %320 = load i8**, i8*** %14, align 8
  %321 = icmp ne i8** %320, null
  br i1 %321, label %322, label %334

322:                                              ; preds = %319
  %323 = load i8**, i8*** %14, align 8
  %324 = load i8*, i8** %323, align 8
  %325 = icmp ne i8* %324, null
  br i1 %325, label %326, label %331

326:                                              ; preds = %322
  %327 = load %struct.super_block*, %struct.super_block** %10, align 8
  %328 = load i8**, i8*** %14, align 8
  %329 = load i8*, i8** %328, align 8
  %330 = call i32 (%struct.super_block*, i8*, i8*, ...) @reiserfs_warning(%struct.super_block* %327, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.34, i64 0, i64 0), i8* %329)
  store i32 0, i32* %9, align 4
  br label %349

331:                                              ; preds = %322
  %332 = load i8*, i8** %19, align 8
  %333 = load i8**, i8*** %14, align 8
  store i8* %332, i8** %333, align 8
  br label %334

334:                                              ; preds = %331, %319, %314, %311
  br label %335

335:                                              ; preds = %334, %308
  %336 = load i32, i32* %18, align 4
  %337 = icmp eq i32 %336, 117
  br i1 %337, label %344, label %338

338:                                              ; preds = %335
  %339 = load i32, i32* %18, align 4
  %340 = icmp eq i32 %339, 103
  br i1 %340, label %344, label %341

341:                                              ; preds = %338
  %342 = load i32, i32* %18, align 4
  %343 = icmp eq i32 %342, 102
  br i1 %343, label %344, label %347

344:                                              ; preds = %341, %338, %335
  %345 = load %struct.super_block*, %struct.super_block** %10, align 8
  %346 = call i32 (%struct.super_block*, i8*, i8*, ...) @reiserfs_warning(%struct.super_block* %345, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.36, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %349

347:                                              ; preds = %341
  br label %236

348:                                              ; preds = %236
  store i32 1, i32* %9, align 4
  br label %349

349:                                              ; preds = %348, %344, %326, %305, %294, %275, %246, %233
  %350 = load i32, i32* %9, align 4
  ret i32 %350
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @reiserfs_getopt(%struct.super_block*, i8**, %struct.TYPE_8__*, i8**, i64*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i64 @simple_strtoul(i8*, i8**, i32) #2

declare dso_local i32 @reiserfs_warning(%struct.super_block*, i8*, i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
