; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_master.c_ubifs_read_master.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_master.c_ubifs_read_master.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, %struct.TYPE_9__, %struct.TYPE_7__, %struct.TYPE_8__*, i64, i64, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32 }
%struct.TYPE_9__ = type { i8*, i8*, i8* }
%struct.TYPE_7__ = type { i32, i32, i32, i8*, i8*, i8*, i8* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EUCLEAN = common dso_local global i32 0, align 4
@UBIFS_MST_RCVRY = common dso_local global i32 0, align 4
@UBIFS_MST_NO_ORPHS = common dso_local global i32 0, align 4
@UBIFS_MIN_LEB_CNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"bad leb_cnt on master node\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Auto resizing (master) from %d LEBs to %d LEBs\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_read_master(%struct.ubifs_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ubifs_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %3, align 8
  %7 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %8 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %7, i32 0, i32 25
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.TYPE_8__* @kzalloc(i32 %9, i32 %10)
  %12 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %13 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %12, i32 0, i32 4
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %13, align 8
  %14 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %15 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %14, i32 0, i32 4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = icmp ne %struct.TYPE_8__* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %422

21:                                               ; preds = %1
  %22 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %23 = call i32 @scan_for_master(%struct.ubifs_info* %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %21
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @EUCLEAN, align 4
  %29 = sub nsw i32 0, %28
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %33 = call i32 @ubifs_recover_master_node(%struct.ubifs_info* %32)
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %31, %26
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %2, align 4
  br label %422

39:                                               ; preds = %34
  br label %40

40:                                               ; preds = %39, %21
  %41 = load i32, i32* @UBIFS_MST_RCVRY, align 4
  %42 = xor i32 %41, -1
  %43 = call i32 @cpu_to_le32(i32 %42)
  %44 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %45 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %44, i32 0, i32 4
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = and i32 %48, %43
  store i32 %49, i32* %47, align 8
  %50 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %51 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %50, i32 0, i32 4
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 28
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i8* @le64_to_cpu(i8* %55)
  %57 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %58 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %57, i32 0, i32 24
  store i8* %56, i8** %58, align 8
  %59 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %60 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %59, i32 0, i32 4
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 27
  %63 = load i8*, i8** %62, align 8
  %64 = call i8* @le64_to_cpu(i8* %63)
  %65 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %66 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %65, i32 0, i32 23
  store i8* %64, i8** %66, align 8
  %67 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %68 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %67, i32 0, i32 4
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 26
  %71 = load i8*, i8** %70, align 8
  %72 = call i8* @le64_to_cpu(i8* %71)
  %73 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %74 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %73, i32 0, i32 22
  store i8* %72, i8** %74, align 8
  %75 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %76 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %75, i32 0, i32 4
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i8* @le32_to_cpu(i32 %79)
  %81 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %82 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 2
  store i8* %80, i8** %83, align 8
  %84 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %85 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %84, i32 0, i32 4
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call i8* @le32_to_cpu(i32 %88)
  %90 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %91 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 1
  store i8* %89, i8** %92, align 8
  %93 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %94 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %93, i32 0, i32 4
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = call i8* @le32_to_cpu(i32 %97)
  %99 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %100 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  store i8* %98, i8** %101, align 8
  %102 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %103 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %102, i32 0, i32 4
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = call i8* @le32_to_cpu(i32 %106)
  %108 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %109 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %108, i32 0, i32 21
  store i8* %107, i8** %109, align 8
  %110 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %111 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %110, i32 0, i32 4
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 4
  %115 = call i8* @le32_to_cpu(i32 %114)
  %116 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %117 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %116, i32 0, i32 20
  store i8* %115, i8** %117, align 8
  %118 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %119 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %118, i32 0, i32 4
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 6
  %122 = load i32, i32* %121, align 8
  %123 = call i8* @le32_to_cpu(i32 %122)
  %124 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %125 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %124, i32 0, i32 19
  store i8* %123, i8** %125, align 8
  %126 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %127 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %126, i32 0, i32 4
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 7
  %130 = load i32, i32* %129, align 4
  %131 = call i8* @le32_to_cpu(i32 %130)
  %132 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %133 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %132, i32 0, i32 18
  store i8* %131, i8** %133, align 8
  %134 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %135 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %134, i32 0, i32 4
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 25
  %138 = load i8*, i8** %137, align 8
  %139 = call i8* @le64_to_cpu(i8* %138)
  %140 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %141 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %140, i32 0, i32 7
  store i8* %139, i8** %141, align 8
  %142 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %143 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %142, i32 0, i32 4
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 8
  %146 = load i32, i32* %145, align 8
  %147 = call i8* @le32_to_cpu(i32 %146)
  %148 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %149 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %148, i32 0, i32 17
  store i8* %147, i8** %149, align 8
  %150 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %151 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %150, i32 0, i32 4
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 9
  %154 = load i32, i32* %153, align 4
  %155 = call i8* @le32_to_cpu(i32 %154)
  %156 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %157 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %156, i32 0, i32 16
  store i8* %155, i8** %157, align 8
  %158 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %159 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %158, i32 0, i32 4
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 10
  %162 = load i32, i32* %161, align 8
  %163 = call i8* @le32_to_cpu(i32 %162)
  %164 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %165 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %164, i32 0, i32 15
  store i8* %163, i8** %165, align 8
  %166 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %167 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %166, i32 0, i32 4
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 11
  %170 = load i32, i32* %169, align 4
  %171 = call i8* @le32_to_cpu(i32 %170)
  %172 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %173 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %172, i32 0, i32 14
  store i8* %171, i8** %173, align 8
  %174 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %175 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %174, i32 0, i32 4
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 12
  %178 = load i32, i32* %177, align 8
  %179 = call i8* @le32_to_cpu(i32 %178)
  %180 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %181 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %180, i32 0, i32 13
  store i8* %179, i8** %181, align 8
  %182 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %183 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %182, i32 0, i32 4
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 13
  %186 = load i32, i32* %185, align 4
  %187 = call i8* @le32_to_cpu(i32 %186)
  %188 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %189 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %188, i32 0, i32 12
  store i8* %187, i8** %189, align 8
  %190 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %191 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %190, i32 0, i32 4
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 14
  %194 = load i32, i32* %193, align 8
  %195 = call i8* @le32_to_cpu(i32 %194)
  %196 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %197 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %196, i32 0, i32 11
  store i8* %195, i8** %197, align 8
  %198 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %199 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %198, i32 0, i32 4
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 15
  %202 = load i32, i32* %201, align 4
  %203 = call i8* @le32_to_cpu(i32 %202)
  %204 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %205 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %204, i32 0, i32 10
  store i8* %203, i8** %205, align 8
  %206 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %207 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %206, i32 0, i32 4
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 16
  %210 = load i32, i32* %209, align 8
  %211 = call i8* @le32_to_cpu(i32 %210)
  %212 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %213 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %212, i32 0, i32 9
  store i8* %211, i8** %213, align 8
  %214 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %215 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %214, i32 0, i32 4
  %216 = load %struct.TYPE_8__*, %struct.TYPE_8__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i32 0, i32 17
  %218 = load i32, i32* %217, align 4
  %219 = call i8* @le32_to_cpu(i32 %218)
  %220 = ptrtoint i8* %219 to i32
  %221 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %222 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %221, i32 0, i32 3
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %222, i32 0, i32 0
  store i32 %220, i32* %223, align 8
  %224 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %225 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %224, i32 0, i32 4
  %226 = load %struct.TYPE_8__*, %struct.TYPE_8__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 18
  %228 = load i32, i32* %227, align 8
  %229 = call i8* @le32_to_cpu(i32 %228)
  %230 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %231 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %230, i32 0, i32 3
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i32 0, i32 6
  store i8* %229, i8** %232, align 8
  %233 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %234 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %233, i32 0, i32 4
  %235 = load %struct.TYPE_8__*, %struct.TYPE_8__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %235, i32 0, i32 19
  %237 = load i32, i32* %236, align 4
  %238 = call i8* @le32_to_cpu(i32 %237)
  %239 = ptrtoint i8* %238 to i32
  store i32 %239, i32* %5, align 4
  %240 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %241 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %240, i32 0, i32 4
  %242 = load %struct.TYPE_8__*, %struct.TYPE_8__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 21
  %244 = load i8*, i8** %243, align 8
  %245 = call i8* @le64_to_cpu(i8* %244)
  %246 = ptrtoint i8* %245 to i32
  %247 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %248 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %247, i32 0, i32 3
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %248, i32 0, i32 1
  store i32 %246, i32* %249, align 4
  %250 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %251 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %250, i32 0, i32 4
  %252 = load %struct.TYPE_8__*, %struct.TYPE_8__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i32 0, i32 24
  %254 = load i8*, i8** %253, align 8
  %255 = call i8* @le64_to_cpu(i8* %254)
  %256 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %257 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %256, i32 0, i32 3
  %258 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %257, i32 0, i32 5
  store i8* %255, i8** %258, align 8
  %259 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %260 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %259, i32 0, i32 4
  %261 = load %struct.TYPE_8__*, %struct.TYPE_8__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %261, i32 0, i32 23
  %263 = load i8*, i8** %262, align 8
  %264 = call i8* @le64_to_cpu(i8* %263)
  %265 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %266 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %265, i32 0, i32 3
  %267 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %266, i32 0, i32 4
  store i8* %264, i8** %267, align 8
  %268 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %269 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %268, i32 0, i32 4
  %270 = load %struct.TYPE_8__*, %struct.TYPE_8__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %270, i32 0, i32 22
  %272 = load i8*, i8** %271, align 8
  %273 = call i8* @le64_to_cpu(i8* %272)
  %274 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %275 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %274, i32 0, i32 3
  %276 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %275, i32 0, i32 3
  store i8* %273, i8** %276, align 8
  %277 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %278 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %277, i32 0, i32 4
  %279 = load %struct.TYPE_8__*, %struct.TYPE_8__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %279, i32 0, i32 20
  %281 = load i8*, i8** %280, align 8
  %282 = call i8* @le64_to_cpu(i8* %281)
  %283 = ptrtoint i8* %282 to i32
  %284 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %285 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %284, i32 0, i32 3
  %286 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %285, i32 0, i32 2
  store i32 %283, i32* %286, align 8
  %287 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %288 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %287, i32 0, i32 7
  %289 = load i8*, i8** %288, align 8
  %290 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %291 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %290, i32 0, i32 8
  store i8* %289, i8** %291, align 8
  %292 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %293 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %292, i32 0, i32 4
  %294 = load %struct.TYPE_8__*, %struct.TYPE_8__** %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = load i32, i32* @UBIFS_MST_NO_ORPHS, align 4
  %298 = call i32 @cpu_to_le32(i32 %297)
  %299 = and i32 %296, %298
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %304

301:                                              ; preds = %40
  %302 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %303 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %302, i32 0, i32 0
  store i32 1, i32* %303, align 8
  br label %304

304:                                              ; preds = %301, %40
  %305 = load i32, i32* %5, align 4
  %306 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %307 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  %309 = icmp ne i32 %305, %308
  br i1 %309, label %310, label %409

310:                                              ; preds = %304
  %311 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %312 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %311, i32 0, i32 1
  %313 = load i32, i32* %312, align 4
  %314 = load i32, i32* %5, align 4
  %315 = sub nsw i32 %313, %314
  store i32 %315, i32* %6, align 4
  %316 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %317 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 4
  %319 = load i32, i32* %5, align 4
  %320 = icmp slt i32 %318, %319
  br i1 %320, label %327, label %321

321:                                              ; preds = %310
  %322 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %323 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %322, i32 0, i32 1
  %324 = load i32, i32* %323, align 4
  %325 = load i32, i32* @UBIFS_MIN_LEB_CNT, align 4
  %326 = icmp slt i32 %324, %325
  br i1 %326, label %327, label %336

327:                                              ; preds = %321, %310
  %328 = call i32 @ubifs_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %329 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %330 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %331 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %330, i32 0, i32 4
  %332 = load %struct.TYPE_8__*, %struct.TYPE_8__** %331, align 8
  %333 = call i32 @dbg_dump_node(%struct.ubifs_info* %329, %struct.TYPE_8__* %332)
  %334 = load i32, i32* @EINVAL, align 4
  %335 = sub nsw i32 0, %334
  store i32 %335, i32* %2, align 4
  br label %422

336:                                              ; preds = %321
  %337 = load i32, i32* %5, align 4
  %338 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %339 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %338, i32 0, i32 1
  %340 = load i32, i32* %339, align 4
  %341 = call i32 @dbg_mnt(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %337, i32 %340)
  %342 = load i32, i32* %6, align 4
  %343 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %344 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %343, i32 0, i32 3
  %345 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 8
  %347 = add nsw i32 %346, %342
  store i32 %347, i32* %345, align 8
  %348 = load i32, i32* %6, align 4
  %349 = sext i32 %348 to i64
  %350 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %351 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %350, i32 0, i32 6
  %352 = load i64, i64* %351, align 8
  %353 = mul nsw i64 %349, %352
  %354 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %355 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %354, i32 0, i32 3
  %356 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %355, i32 0, i32 1
  %357 = load i32, i32* %356, align 4
  %358 = sext i32 %357 to i64
  %359 = add nsw i64 %358, %353
  %360 = trunc i64 %359 to i32
  store i32 %360, i32* %356, align 4
  %361 = load i32, i32* %6, align 4
  %362 = sext i32 %361 to i64
  %363 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %364 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %363, i32 0, i32 5
  %365 = load i64, i64* %364, align 8
  %366 = mul nsw i64 %362, %365
  %367 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %368 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %367, i32 0, i32 3
  %369 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %368, i32 0, i32 2
  %370 = load i32, i32* %369, align 8
  %371 = sext i32 %370 to i64
  %372 = add nsw i64 %371, %366
  %373 = trunc i64 %372 to i32
  store i32 %373, i32* %369, align 8
  %374 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %375 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %374, i32 0, i32 1
  %376 = load i32, i32* %375, align 4
  %377 = call i32 @cpu_to_le32(i32 %376)
  %378 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %379 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %378, i32 0, i32 4
  %380 = load %struct.TYPE_8__*, %struct.TYPE_8__** %379, align 8
  %381 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %380, i32 0, i32 19
  store i32 %377, i32* %381, align 4
  %382 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %383 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %382, i32 0, i32 3
  %384 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %383, i32 0, i32 0
  %385 = load i32, i32* %384, align 8
  %386 = call i32 @cpu_to_le32(i32 %385)
  %387 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %388 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %387, i32 0, i32 4
  %389 = load %struct.TYPE_8__*, %struct.TYPE_8__** %388, align 8
  %390 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %389, i32 0, i32 17
  store i32 %386, i32* %390, align 4
  %391 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %392 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %391, i32 0, i32 3
  %393 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %392, i32 0, i32 1
  %394 = load i32, i32* %393, align 4
  %395 = call i8* @cpu_to_le64(i32 %394)
  %396 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %397 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %396, i32 0, i32 4
  %398 = load %struct.TYPE_8__*, %struct.TYPE_8__** %397, align 8
  %399 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %398, i32 0, i32 21
  store i8* %395, i8** %399, align 8
  %400 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %401 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %400, i32 0, i32 3
  %402 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %401, i32 0, i32 2
  %403 = load i32, i32* %402, align 8
  %404 = call i8* @cpu_to_le64(i32 %403)
  %405 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %406 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %405, i32 0, i32 4
  %407 = load %struct.TYPE_8__*, %struct.TYPE_8__** %406, align 8
  %408 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %407, i32 0, i32 20
  store i8* %404, i8** %408, align 8
  br label %409

409:                                              ; preds = %336, %304
  %410 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %411 = call i32 @validate_master(%struct.ubifs_info* %410)
  store i32 %411, i32* %4, align 4
  %412 = load i32, i32* %4, align 4
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %414, label %416

414:                                              ; preds = %409
  %415 = load i32, i32* %4, align 4
  store i32 %415, i32* %2, align 4
  br label %422

416:                                              ; preds = %409
  %417 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %418 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %419 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %418, i32 0, i32 2
  %420 = call i32 @dbg_old_index_check_init(%struct.ubifs_info* %417, %struct.TYPE_9__* %419)
  store i32 %420, i32* %4, align 4
  %421 = load i32, i32* %4, align 4
  store i32 %421, i32* %2, align 4
  br label %422

422:                                              ; preds = %416, %414, %327, %37, %18
  %423 = load i32, i32* %2, align 4
  ret i32 %423
}

declare dso_local %struct.TYPE_8__* @kzalloc(i32, i32) #1

declare dso_local i32 @scan_for_master(%struct.ubifs_info*) #1

declare dso_local i32 @ubifs_recover_master_node(%struct.ubifs_info*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i8* @le64_to_cpu(i8*) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @ubifs_err(i8*) #1

declare dso_local i32 @dbg_dump_node(%struct.ubifs_info*, %struct.TYPE_8__*) #1

declare dso_local i32 @dbg_mnt(i8*, i32, i32) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i32 @validate_master(%struct.ubifs_info*) #1

declare dso_local i32 @dbg_old_index_check_init(%struct.ubifs_info*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
