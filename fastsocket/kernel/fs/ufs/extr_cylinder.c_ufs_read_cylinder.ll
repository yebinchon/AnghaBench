; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_cylinder.c_ufs_read_cylinder.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_cylinder.c_ufs_read_cylinder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ufs_sb_info = type { i32*, %struct.TYPE_8__**, %struct.ufs_cg_private_info**, %struct.ufs_sb_private_info* }
%struct.TYPE_8__ = type { i64 }
%struct.ufs_cg_private_info = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.ufs_sb_private_info = type { i32 }
%struct.ufs_cylinder_group = type { %struct.TYPE_7__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i64, %struct.TYPE_8__** }

@.str = private unnamed_addr constant [30 x i8] c"ENTER, cgno %u, bitmap_nr %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"EXIT\0A\00", align 1
@UFS_CGNO_EMPTY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"ufs_read_cylinder\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"can't read cylinder group block %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*, i32, i32)* @ufs_read_cylinder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ufs_read_cylinder(%struct.super_block* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ufs_sb_info*, align 8
  %8 = alloca %struct.ufs_sb_private_info*, align 8
  %9 = alloca %struct.ufs_cg_private_info*, align 8
  %10 = alloca %struct.ufs_cylinder_group*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load %struct.super_block*, %struct.super_block** %4, align 8
  %14 = call %struct.ufs_sb_info* @UFS_SB(%struct.super_block* %13)
  store %struct.ufs_sb_info* %14, %struct.ufs_sb_info** %7, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 (i8*, ...) @UFSD(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16)
  %18 = load %struct.ufs_sb_info*, %struct.ufs_sb_info** %7, align 8
  %19 = getelementptr inbounds %struct.ufs_sb_info, %struct.ufs_sb_info* %18, i32 0, i32 3
  %20 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %19, align 8
  store %struct.ufs_sb_private_info* %20, %struct.ufs_sb_private_info** %8, align 8
  %21 = load %struct.ufs_sb_info*, %struct.ufs_sb_info** %7, align 8
  %22 = getelementptr inbounds %struct.ufs_sb_info, %struct.ufs_sb_info* %21, i32 0, i32 2
  %23 = load %struct.ufs_cg_private_info**, %struct.ufs_cg_private_info*** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %23, i64 %25
  %27 = load %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %26, align 8
  store %struct.ufs_cg_private_info* %27, %struct.ufs_cg_private_info** %9, align 8
  %28 = load %struct.ufs_sb_info*, %struct.ufs_sb_info** %7, align 8
  %29 = getelementptr inbounds %struct.ufs_sb_info, %struct.ufs_sb_info* %28, i32 0, i32 1
  %30 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %30, i64 %32
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to %struct.ufs_cylinder_group*
  store %struct.ufs_cylinder_group* %37, %struct.ufs_cylinder_group** %10, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i64 @ufs_cgcmin(i32 %38)
  %40 = load %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %9, align 8
  %41 = call %struct.TYPE_9__* @UCPI_UBH(%struct.ufs_cg_private_info* %40)
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  store i64 %39, i64* %42, align 8
  %43 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %8, align 8
  %44 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.super_block*, %struct.super_block** %4, align 8
  %47 = getelementptr inbounds %struct.super_block, %struct.super_block* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = ashr i32 %45, %48
  %50 = load %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %9, align 8
  %51 = call %struct.TYPE_9__* @UCPI_UBH(%struct.ufs_cg_private_info* %50)
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 8
  %53 = load %struct.ufs_sb_info*, %struct.ufs_sb_info** %7, align 8
  %54 = getelementptr inbounds %struct.ufs_sb_info, %struct.ufs_sb_info* %53, i32 0, i32 1
  %55 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %55, i64 %57
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = load %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %9, align 8
  %61 = call %struct.TYPE_9__* @UCPI_UBH(%struct.ufs_cg_private_info* %60)
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %63, i64 0
  store %struct.TYPE_8__* %59, %struct.TYPE_8__** %64, align 8
  store i32 1, i32* %11, align 4
  br label %65

65:                                               ; preds = %92, %3
  %66 = load i32, i32* %11, align 4
  %67 = load %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %9, align 8
  %68 = call %struct.TYPE_9__* @UCPI_UBH(%struct.ufs_cg_private_info* %67)
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ult i32 %66, %70
  br i1 %71, label %72, label %95

72:                                               ; preds = %65
  %73 = load %struct.super_block*, %struct.super_block** %4, align 8
  %74 = load %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %9, align 8
  %75 = call %struct.TYPE_9__* @UCPI_UBH(%struct.ufs_cg_private_info* %74)
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* %11, align 4
  %79 = zext i32 %78 to i64
  %80 = add nsw i64 %77, %79
  %81 = call %struct.TYPE_8__* @sb_bread(%struct.super_block* %73, i64 %80)
  %82 = load %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %9, align 8
  %83 = call %struct.TYPE_9__* @UCPI_UBH(%struct.ufs_cg_private_info* %82)
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %84, align 8
  %86 = load i32, i32* %11, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %85, i64 %87
  store %struct.TYPE_8__* %81, %struct.TYPE_8__** %88, align 8
  %89 = icmp ne %struct.TYPE_8__* %81, null
  br i1 %89, label %91, label %90

90:                                               ; preds = %72
  br label %215

91:                                               ; preds = %72
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %11, align 4
  %94 = add i32 %93, 1
  store i32 %94, i32* %11, align 4
  br label %65

95:                                               ; preds = %65
  %96 = load i32, i32* %5, align 4
  %97 = load %struct.ufs_sb_info*, %struct.ufs_sb_info** %7, align 8
  %98 = getelementptr inbounds %struct.ufs_sb_info, %struct.ufs_sb_info* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %6, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  store i32 %96, i32* %102, align 4
  %103 = load %struct.super_block*, %struct.super_block** %4, align 8
  %104 = load %struct.ufs_cylinder_group*, %struct.ufs_cylinder_group** %10, align 8
  %105 = getelementptr inbounds %struct.ufs_cylinder_group, %struct.ufs_cylinder_group* %104, i32 0, i32 12
  %106 = load i32, i32* %105, align 4
  %107 = call i8* @fs32_to_cpu(%struct.super_block* %103, i32 %106)
  %108 = load %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %9, align 8
  %109 = getelementptr inbounds %struct.ufs_cg_private_info, %struct.ufs_cg_private_info* %108, i32 0, i32 14
  store i8* %107, i8** %109, align 8
  %110 = load %struct.super_block*, %struct.super_block** %4, align 8
  %111 = load %struct.ufs_cylinder_group*, %struct.ufs_cylinder_group** %10, align 8
  %112 = getelementptr inbounds %struct.ufs_cylinder_group, %struct.ufs_cylinder_group* %111, i32 0, i32 11
  %113 = load i32, i32* %112, align 4
  %114 = call i8* @fs16_to_cpu(%struct.super_block* %110, i32 %113)
  %115 = load %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %9, align 8
  %116 = getelementptr inbounds %struct.ufs_cg_private_info, %struct.ufs_cg_private_info* %115, i32 0, i32 13
  store i8* %114, i8** %116, align 8
  %117 = load %struct.super_block*, %struct.super_block** %4, align 8
  %118 = load %struct.ufs_cylinder_group*, %struct.ufs_cylinder_group** %10, align 8
  %119 = getelementptr inbounds %struct.ufs_cylinder_group, %struct.ufs_cylinder_group* %118, i32 0, i32 10
  %120 = load i32, i32* %119, align 4
  %121 = call i8* @fs16_to_cpu(%struct.super_block* %117, i32 %120)
  %122 = load %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %9, align 8
  %123 = getelementptr inbounds %struct.ufs_cg_private_info, %struct.ufs_cg_private_info* %122, i32 0, i32 12
  store i8* %121, i8** %123, align 8
  %124 = load %struct.super_block*, %struct.super_block** %4, align 8
  %125 = load %struct.ufs_cylinder_group*, %struct.ufs_cylinder_group** %10, align 8
  %126 = getelementptr inbounds %struct.ufs_cylinder_group, %struct.ufs_cylinder_group* %125, i32 0, i32 9
  %127 = load i32, i32* %126, align 4
  %128 = call i8* @fs32_to_cpu(%struct.super_block* %124, i32 %127)
  %129 = load %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %9, align 8
  %130 = getelementptr inbounds %struct.ufs_cg_private_info, %struct.ufs_cg_private_info* %129, i32 0, i32 11
  store i8* %128, i8** %130, align 8
  %131 = load %struct.super_block*, %struct.super_block** %4, align 8
  %132 = load %struct.ufs_cylinder_group*, %struct.ufs_cylinder_group** %10, align 8
  %133 = getelementptr inbounds %struct.ufs_cylinder_group, %struct.ufs_cylinder_group* %132, i32 0, i32 8
  %134 = load i32, i32* %133, align 4
  %135 = call i8* @fs32_to_cpu(%struct.super_block* %131, i32 %134)
  %136 = load %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %9, align 8
  %137 = getelementptr inbounds %struct.ufs_cg_private_info, %struct.ufs_cg_private_info* %136, i32 0, i32 10
  store i8* %135, i8** %137, align 8
  %138 = load %struct.super_block*, %struct.super_block** %4, align 8
  %139 = load %struct.ufs_cylinder_group*, %struct.ufs_cylinder_group** %10, align 8
  %140 = getelementptr inbounds %struct.ufs_cylinder_group, %struct.ufs_cylinder_group* %139, i32 0, i32 7
  %141 = load i32, i32* %140, align 4
  %142 = call i8* @fs32_to_cpu(%struct.super_block* %138, i32 %141)
  %143 = load %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %9, align 8
  %144 = getelementptr inbounds %struct.ufs_cg_private_info, %struct.ufs_cg_private_info* %143, i32 0, i32 9
  store i8* %142, i8** %144, align 8
  %145 = load %struct.super_block*, %struct.super_block** %4, align 8
  %146 = load %struct.ufs_cylinder_group*, %struct.ufs_cylinder_group** %10, align 8
  %147 = getelementptr inbounds %struct.ufs_cylinder_group, %struct.ufs_cylinder_group* %146, i32 0, i32 6
  %148 = load i32, i32* %147, align 4
  %149 = call i8* @fs32_to_cpu(%struct.super_block* %145, i32 %148)
  %150 = load %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %9, align 8
  %151 = getelementptr inbounds %struct.ufs_cg_private_info, %struct.ufs_cg_private_info* %150, i32 0, i32 8
  store i8* %149, i8** %151, align 8
  %152 = load %struct.super_block*, %struct.super_block** %4, align 8
  %153 = load %struct.ufs_cylinder_group*, %struct.ufs_cylinder_group** %10, align 8
  %154 = getelementptr inbounds %struct.ufs_cylinder_group, %struct.ufs_cylinder_group* %153, i32 0, i32 5
  %155 = load i32, i32* %154, align 4
  %156 = call i8* @fs32_to_cpu(%struct.super_block* %152, i32 %155)
  %157 = load %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %9, align 8
  %158 = getelementptr inbounds %struct.ufs_cg_private_info, %struct.ufs_cg_private_info* %157, i32 0, i32 7
  store i8* %156, i8** %158, align 8
  %159 = load %struct.super_block*, %struct.super_block** %4, align 8
  %160 = load %struct.ufs_cylinder_group*, %struct.ufs_cylinder_group** %10, align 8
  %161 = getelementptr inbounds %struct.ufs_cylinder_group, %struct.ufs_cylinder_group* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 4
  %163 = call i8* @fs32_to_cpu(%struct.super_block* %159, i32 %162)
  %164 = load %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %9, align 8
  %165 = getelementptr inbounds %struct.ufs_cg_private_info, %struct.ufs_cg_private_info* %164, i32 0, i32 6
  store i8* %163, i8** %165, align 8
  %166 = load %struct.super_block*, %struct.super_block** %4, align 8
  %167 = load %struct.ufs_cylinder_group*, %struct.ufs_cylinder_group** %10, align 8
  %168 = getelementptr inbounds %struct.ufs_cylinder_group, %struct.ufs_cylinder_group* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = call i8* @fs32_to_cpu(%struct.super_block* %166, i32 %169)
  %171 = load %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %9, align 8
  %172 = getelementptr inbounds %struct.ufs_cg_private_info, %struct.ufs_cg_private_info* %171, i32 0, i32 5
  store i8* %170, i8** %172, align 8
  %173 = load %struct.super_block*, %struct.super_block** %4, align 8
  %174 = load %struct.ufs_cylinder_group*, %struct.ufs_cylinder_group** %10, align 8
  %175 = getelementptr inbounds %struct.ufs_cylinder_group, %struct.ufs_cylinder_group* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = call i8* @fs32_to_cpu(%struct.super_block* %173, i32 %176)
  %178 = load %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %9, align 8
  %179 = getelementptr inbounds %struct.ufs_cg_private_info, %struct.ufs_cg_private_info* %178, i32 0, i32 4
  store i8* %177, i8** %179, align 8
  %180 = load %struct.super_block*, %struct.super_block** %4, align 8
  %181 = load %struct.ufs_cylinder_group*, %struct.ufs_cylinder_group** %10, align 8
  %182 = getelementptr inbounds %struct.ufs_cylinder_group, %struct.ufs_cylinder_group* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = call i8* @fs32_to_cpu(%struct.super_block* %180, i32 %183)
  %185 = load %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %9, align 8
  %186 = getelementptr inbounds %struct.ufs_cg_private_info, %struct.ufs_cg_private_info* %185, i32 0, i32 3
  store i8* %184, i8** %186, align 8
  %187 = load %struct.super_block*, %struct.super_block** %4, align 8
  %188 = load %struct.ufs_cylinder_group*, %struct.ufs_cylinder_group** %10, align 8
  %189 = getelementptr inbounds %struct.ufs_cylinder_group, %struct.ufs_cylinder_group* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 4
  %193 = call i8* @fs32_to_cpu(%struct.super_block* %187, i32 %192)
  %194 = load %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %9, align 8
  %195 = getelementptr inbounds %struct.ufs_cg_private_info, %struct.ufs_cg_private_info* %194, i32 0, i32 2
  store i8* %193, i8** %195, align 8
  %196 = load %struct.super_block*, %struct.super_block** %4, align 8
  %197 = load %struct.ufs_cylinder_group*, %struct.ufs_cylinder_group** %10, align 8
  %198 = getelementptr inbounds %struct.ufs_cylinder_group, %struct.ufs_cylinder_group* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = call i8* @fs32_to_cpu(%struct.super_block* %196, i32 %201)
  %203 = load %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %9, align 8
  %204 = getelementptr inbounds %struct.ufs_cg_private_info, %struct.ufs_cg_private_info* %203, i32 0, i32 1
  store i8* %202, i8** %204, align 8
  %205 = load %struct.super_block*, %struct.super_block** %4, align 8
  %206 = load %struct.ufs_cylinder_group*, %struct.ufs_cylinder_group** %10, align 8
  %207 = getelementptr inbounds %struct.ufs_cylinder_group, %struct.ufs_cylinder_group* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = call i8* @fs32_to_cpu(%struct.super_block* %205, i32 %210)
  %212 = load %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %9, align 8
  %213 = getelementptr inbounds %struct.ufs_cg_private_info, %struct.ufs_cg_private_info* %212, i32 0, i32 0
  store i8* %211, i8** %213, align 8
  %214 = call i32 (i8*, ...) @UFSD(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %243

215:                                              ; preds = %90
  store i32 1, i32* %12, align 4
  br label %216

216:                                              ; preds = %229, %215
  %217 = load i32, i32* %12, align 4
  %218 = load i32, i32* %11, align 4
  %219 = icmp ult i32 %217, %218
  br i1 %219, label %220, label %232

220:                                              ; preds = %216
  %221 = load %struct.ufs_sb_info*, %struct.ufs_sb_info** %7, align 8
  %222 = getelementptr inbounds %struct.ufs_sb_info, %struct.ufs_sb_info* %221, i32 0, i32 1
  %223 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %222, align 8
  %224 = load i32, i32* %12, align 4
  %225 = zext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %223, i64 %225
  %227 = load %struct.TYPE_8__*, %struct.TYPE_8__** %226, align 8
  %228 = call i32 @brelse(%struct.TYPE_8__* %227)
  br label %229

229:                                              ; preds = %220
  %230 = load i32, i32* %12, align 4
  %231 = add i32 %230, 1
  store i32 %231, i32* %12, align 4
  br label %216

232:                                              ; preds = %216
  %233 = load i32, i32* @UFS_CGNO_EMPTY, align 4
  %234 = load %struct.ufs_sb_info*, %struct.ufs_sb_info** %7, align 8
  %235 = getelementptr inbounds %struct.ufs_sb_info, %struct.ufs_sb_info* %234, i32 0, i32 0
  %236 = load i32*, i32** %235, align 8
  %237 = load i32, i32* %6, align 4
  %238 = zext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %236, i64 %238
  store i32 %233, i32* %239, align 4
  %240 = load %struct.super_block*, %struct.super_block** %4, align 8
  %241 = load i32, i32* %5, align 4
  %242 = call i32 @ufs_error(%struct.super_block* %240, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %241)
  br label %243

243:                                              ; preds = %232, %95
  ret void
}

declare dso_local %struct.ufs_sb_info* @UFS_SB(%struct.super_block*) #1

declare dso_local i32 @UFSD(i8*, ...) #1

declare dso_local i64 @ufs_cgcmin(i32) #1

declare dso_local %struct.TYPE_9__* @UCPI_UBH(%struct.ufs_cg_private_info*) #1

declare dso_local %struct.TYPE_8__* @sb_bread(%struct.super_block*, i64) #1

declare dso_local i8* @fs32_to_cpu(%struct.super_block*, i32) #1

declare dso_local i8* @fs16_to_cpu(%struct.super_block*, i32) #1

declare dso_local i32 @brelse(%struct.TYPE_8__*) #1

declare dso_local i32 @ufs_error(%struct.super_block*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
