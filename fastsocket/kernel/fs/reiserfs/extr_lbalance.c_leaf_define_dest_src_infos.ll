; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_lbalance.c_leaf_define_dest_src_infos.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_lbalance.c_leaf_define_dest_src_infos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_balance = type { i32, i32**, %struct.buffer_head**, i32**, %struct.buffer_head** }
%struct.buffer_info = type { %struct.buffer_head*, i8*, i32*, %struct.tree_balance* }
%struct.buffer_head = type { i32 }

@FIRST_TO_LAST = common dso_local global i32 0, align 4
@LAST_TO_FIRST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"vs-10250\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"shift type is unknown (%d)\00", align 1
@.str.2 = private unnamed_addr constant [79 x i8] c"vs-10260: mode==%d, source (%p) or dest (%p) buffer is initialized incorrectly\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.tree_balance*, %struct.buffer_info*, %struct.buffer_info*, i32*, %struct.buffer_head*)* @leaf_define_dest_src_infos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @leaf_define_dest_src_infos(i32 %0, %struct.tree_balance* %1, %struct.buffer_info* %2, %struct.buffer_info* %3, i32* %4, %struct.buffer_head* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.tree_balance*, align 8
  %9 = alloca %struct.buffer_info*, align 8
  %10 = alloca %struct.buffer_info*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.buffer_head*, align 8
  store i32 %0, i32* %7, align 4
  store %struct.tree_balance* %1, %struct.tree_balance** %8, align 8
  store %struct.buffer_info* %2, %struct.buffer_info** %9, align 8
  store %struct.buffer_info* %3, %struct.buffer_info** %10, align 8
  store i32* %4, i32** %11, align 8
  store %struct.buffer_head* %5, %struct.buffer_head** %12, align 8
  %13 = load %struct.buffer_info*, %struct.buffer_info** %9, align 8
  %14 = call i32 @memset(%struct.buffer_info* %13, i32 0, i32 32)
  %15 = load %struct.buffer_info*, %struct.buffer_info** %10, align 8
  %16 = call i32 @memset(%struct.buffer_info* %15, i32 0, i32 32)
  %17 = load i32, i32* %7, align 4
  switch i32 %17, label %238 [
    i32 130, label %18
    i32 129, label %65
    i32 131, label %112
    i32 132, label %157
    i32 128, label %202
  ]

18:                                               ; preds = %6
  %19 = load %struct.tree_balance*, %struct.tree_balance** %8, align 8
  %20 = load %struct.buffer_info*, %struct.buffer_info** %10, align 8
  %21 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %20, i32 0, i32 3
  store %struct.tree_balance* %19, %struct.tree_balance** %21, align 8
  %22 = load %struct.tree_balance*, %struct.tree_balance** %8, align 8
  %23 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i8* @PATH_PLAST_BUFFER(i32 %24)
  %26 = bitcast i8* %25 to %struct.buffer_head*
  %27 = load %struct.buffer_info*, %struct.buffer_info** %10, align 8
  %28 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %27, i32 0, i32 0
  store %struct.buffer_head* %26, %struct.buffer_head** %28, align 8
  %29 = load %struct.tree_balance*, %struct.tree_balance** %8, align 8
  %30 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i8* @PATH_H_PPARENT(i32 %31, i32 0)
  %33 = bitcast i8* %32 to i32*
  %34 = load %struct.buffer_info*, %struct.buffer_info** %10, align 8
  %35 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %34, i32 0, i32 2
  store i32* %33, i32** %35, align 8
  %36 = load %struct.tree_balance*, %struct.tree_balance** %8, align 8
  %37 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i8* @PATH_H_B_ITEM_ORDER(i32 %38, i32 0)
  %40 = load %struct.buffer_info*, %struct.buffer_info** %10, align 8
  %41 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %40, i32 0, i32 1
  store i8* %39, i8** %41, align 8
  %42 = load %struct.tree_balance*, %struct.tree_balance** %8, align 8
  %43 = load %struct.buffer_info*, %struct.buffer_info** %9, align 8
  %44 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %43, i32 0, i32 3
  store %struct.tree_balance* %42, %struct.tree_balance** %44, align 8
  %45 = load %struct.tree_balance*, %struct.tree_balance** %8, align 8
  %46 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %45, i32 0, i32 4
  %47 = load %struct.buffer_head**, %struct.buffer_head*** %46, align 8
  %48 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %47, i64 0
  %49 = load %struct.buffer_head*, %struct.buffer_head** %48, align 8
  %50 = load %struct.buffer_info*, %struct.buffer_info** %9, align 8
  %51 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %50, i32 0, i32 0
  store %struct.buffer_head* %49, %struct.buffer_head** %51, align 8
  %52 = load %struct.tree_balance*, %struct.tree_balance** %8, align 8
  %53 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %52, i32 0, i32 3
  %54 = load i32**, i32*** %53, align 8
  %55 = getelementptr inbounds i32*, i32** %54, i64 0
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.buffer_info*, %struct.buffer_info** %9, align 8
  %58 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %57, i32 0, i32 2
  store i32* %56, i32** %58, align 8
  %59 = load %struct.tree_balance*, %struct.tree_balance** %8, align 8
  %60 = call i8* @get_left_neighbor_position(%struct.tree_balance* %59, i32 0)
  %61 = load %struct.buffer_info*, %struct.buffer_info** %9, align 8
  %62 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %61, i32 0, i32 1
  store i8* %60, i8** %62, align 8
  %63 = load i32, i32* @FIRST_TO_LAST, align 4
  %64 = load i32*, i32** %11, align 8
  store i32 %63, i32* %64, align 4
  br label %243

65:                                               ; preds = %6
  %66 = load %struct.tree_balance*, %struct.tree_balance** %8, align 8
  %67 = load %struct.buffer_info*, %struct.buffer_info** %10, align 8
  %68 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %67, i32 0, i32 3
  store %struct.tree_balance* %66, %struct.tree_balance** %68, align 8
  %69 = load %struct.tree_balance*, %struct.tree_balance** %8, align 8
  %70 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i8* @PATH_PLAST_BUFFER(i32 %71)
  %73 = bitcast i8* %72 to %struct.buffer_head*
  %74 = load %struct.buffer_info*, %struct.buffer_info** %10, align 8
  %75 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %74, i32 0, i32 0
  store %struct.buffer_head* %73, %struct.buffer_head** %75, align 8
  %76 = load %struct.tree_balance*, %struct.tree_balance** %8, align 8
  %77 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i8* @PATH_H_PPARENT(i32 %78, i32 0)
  %80 = bitcast i8* %79 to i32*
  %81 = load %struct.buffer_info*, %struct.buffer_info** %10, align 8
  %82 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %81, i32 0, i32 2
  store i32* %80, i32** %82, align 8
  %83 = load %struct.tree_balance*, %struct.tree_balance** %8, align 8
  %84 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i8* @PATH_H_B_ITEM_ORDER(i32 %85, i32 0)
  %87 = load %struct.buffer_info*, %struct.buffer_info** %10, align 8
  %88 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %87, i32 0, i32 1
  store i8* %86, i8** %88, align 8
  %89 = load %struct.tree_balance*, %struct.tree_balance** %8, align 8
  %90 = load %struct.buffer_info*, %struct.buffer_info** %9, align 8
  %91 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %90, i32 0, i32 3
  store %struct.tree_balance* %89, %struct.tree_balance** %91, align 8
  %92 = load %struct.tree_balance*, %struct.tree_balance** %8, align 8
  %93 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %92, i32 0, i32 2
  %94 = load %struct.buffer_head**, %struct.buffer_head*** %93, align 8
  %95 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %94, i64 0
  %96 = load %struct.buffer_head*, %struct.buffer_head** %95, align 8
  %97 = load %struct.buffer_info*, %struct.buffer_info** %9, align 8
  %98 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %97, i32 0, i32 0
  store %struct.buffer_head* %96, %struct.buffer_head** %98, align 8
  %99 = load %struct.tree_balance*, %struct.tree_balance** %8, align 8
  %100 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %99, i32 0, i32 1
  %101 = load i32**, i32*** %100, align 8
  %102 = getelementptr inbounds i32*, i32** %101, i64 0
  %103 = load i32*, i32** %102, align 8
  %104 = load %struct.buffer_info*, %struct.buffer_info** %9, align 8
  %105 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %104, i32 0, i32 2
  store i32* %103, i32** %105, align 8
  %106 = load %struct.tree_balance*, %struct.tree_balance** %8, align 8
  %107 = call i8* @get_right_neighbor_position(%struct.tree_balance* %106, i32 0)
  %108 = load %struct.buffer_info*, %struct.buffer_info** %9, align 8
  %109 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %108, i32 0, i32 1
  store i8* %107, i8** %109, align 8
  %110 = load i32, i32* @LAST_TO_FIRST, align 4
  %111 = load i32*, i32** %11, align 8
  store i32 %110, i32* %111, align 4
  br label %243

112:                                              ; preds = %6
  %113 = load %struct.tree_balance*, %struct.tree_balance** %8, align 8
  %114 = load %struct.buffer_info*, %struct.buffer_info** %10, align 8
  %115 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %114, i32 0, i32 3
  store %struct.tree_balance* %113, %struct.tree_balance** %115, align 8
  %116 = load %struct.tree_balance*, %struct.tree_balance** %8, align 8
  %117 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %116, i32 0, i32 2
  %118 = load %struct.buffer_head**, %struct.buffer_head*** %117, align 8
  %119 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %118, i64 0
  %120 = load %struct.buffer_head*, %struct.buffer_head** %119, align 8
  %121 = load %struct.buffer_info*, %struct.buffer_info** %10, align 8
  %122 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %121, i32 0, i32 0
  store %struct.buffer_head* %120, %struct.buffer_head** %122, align 8
  %123 = load %struct.tree_balance*, %struct.tree_balance** %8, align 8
  %124 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %123, i32 0, i32 1
  %125 = load i32**, i32*** %124, align 8
  %126 = getelementptr inbounds i32*, i32** %125, i64 0
  %127 = load i32*, i32** %126, align 8
  %128 = load %struct.buffer_info*, %struct.buffer_info** %10, align 8
  %129 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %128, i32 0, i32 2
  store i32* %127, i32** %129, align 8
  %130 = load %struct.tree_balance*, %struct.tree_balance** %8, align 8
  %131 = call i8* @get_right_neighbor_position(%struct.tree_balance* %130, i32 0)
  %132 = load %struct.buffer_info*, %struct.buffer_info** %10, align 8
  %133 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %132, i32 0, i32 1
  store i8* %131, i8** %133, align 8
  %134 = load %struct.tree_balance*, %struct.tree_balance** %8, align 8
  %135 = load %struct.buffer_info*, %struct.buffer_info** %9, align 8
  %136 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %135, i32 0, i32 3
  store %struct.tree_balance* %134, %struct.tree_balance** %136, align 8
  %137 = load %struct.tree_balance*, %struct.tree_balance** %8, align 8
  %138 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %137, i32 0, i32 4
  %139 = load %struct.buffer_head**, %struct.buffer_head*** %138, align 8
  %140 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %139, i64 0
  %141 = load %struct.buffer_head*, %struct.buffer_head** %140, align 8
  %142 = load %struct.buffer_info*, %struct.buffer_info** %9, align 8
  %143 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %142, i32 0, i32 0
  store %struct.buffer_head* %141, %struct.buffer_head** %143, align 8
  %144 = load %struct.tree_balance*, %struct.tree_balance** %8, align 8
  %145 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %144, i32 0, i32 3
  %146 = load i32**, i32*** %145, align 8
  %147 = getelementptr inbounds i32*, i32** %146, i64 0
  %148 = load i32*, i32** %147, align 8
  %149 = load %struct.buffer_info*, %struct.buffer_info** %9, align 8
  %150 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %149, i32 0, i32 2
  store i32* %148, i32** %150, align 8
  %151 = load %struct.tree_balance*, %struct.tree_balance** %8, align 8
  %152 = call i8* @get_left_neighbor_position(%struct.tree_balance* %151, i32 0)
  %153 = load %struct.buffer_info*, %struct.buffer_info** %9, align 8
  %154 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %153, i32 0, i32 1
  store i8* %152, i8** %154, align 8
  %155 = load i32, i32* @FIRST_TO_LAST, align 4
  %156 = load i32*, i32** %11, align 8
  store i32 %155, i32* %156, align 4
  br label %243

157:                                              ; preds = %6
  %158 = load %struct.tree_balance*, %struct.tree_balance** %8, align 8
  %159 = load %struct.buffer_info*, %struct.buffer_info** %10, align 8
  %160 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %159, i32 0, i32 3
  store %struct.tree_balance* %158, %struct.tree_balance** %160, align 8
  %161 = load %struct.tree_balance*, %struct.tree_balance** %8, align 8
  %162 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %161, i32 0, i32 4
  %163 = load %struct.buffer_head**, %struct.buffer_head*** %162, align 8
  %164 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %163, i64 0
  %165 = load %struct.buffer_head*, %struct.buffer_head** %164, align 8
  %166 = load %struct.buffer_info*, %struct.buffer_info** %10, align 8
  %167 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %166, i32 0, i32 0
  store %struct.buffer_head* %165, %struct.buffer_head** %167, align 8
  %168 = load %struct.tree_balance*, %struct.tree_balance** %8, align 8
  %169 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %168, i32 0, i32 3
  %170 = load i32**, i32*** %169, align 8
  %171 = getelementptr inbounds i32*, i32** %170, i64 0
  %172 = load i32*, i32** %171, align 8
  %173 = load %struct.buffer_info*, %struct.buffer_info** %10, align 8
  %174 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %173, i32 0, i32 2
  store i32* %172, i32** %174, align 8
  %175 = load %struct.tree_balance*, %struct.tree_balance** %8, align 8
  %176 = call i8* @get_left_neighbor_position(%struct.tree_balance* %175, i32 0)
  %177 = load %struct.buffer_info*, %struct.buffer_info** %10, align 8
  %178 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %177, i32 0, i32 1
  store i8* %176, i8** %178, align 8
  %179 = load %struct.tree_balance*, %struct.tree_balance** %8, align 8
  %180 = load %struct.buffer_info*, %struct.buffer_info** %9, align 8
  %181 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %180, i32 0, i32 3
  store %struct.tree_balance* %179, %struct.tree_balance** %181, align 8
  %182 = load %struct.tree_balance*, %struct.tree_balance** %8, align 8
  %183 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %182, i32 0, i32 2
  %184 = load %struct.buffer_head**, %struct.buffer_head*** %183, align 8
  %185 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %184, i64 0
  %186 = load %struct.buffer_head*, %struct.buffer_head** %185, align 8
  %187 = load %struct.buffer_info*, %struct.buffer_info** %9, align 8
  %188 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %187, i32 0, i32 0
  store %struct.buffer_head* %186, %struct.buffer_head** %188, align 8
  %189 = load %struct.tree_balance*, %struct.tree_balance** %8, align 8
  %190 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %189, i32 0, i32 1
  %191 = load i32**, i32*** %190, align 8
  %192 = getelementptr inbounds i32*, i32** %191, i64 0
  %193 = load i32*, i32** %192, align 8
  %194 = load %struct.buffer_info*, %struct.buffer_info** %9, align 8
  %195 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %194, i32 0, i32 2
  store i32* %193, i32** %195, align 8
  %196 = load %struct.tree_balance*, %struct.tree_balance** %8, align 8
  %197 = call i8* @get_right_neighbor_position(%struct.tree_balance* %196, i32 0)
  %198 = load %struct.buffer_info*, %struct.buffer_info** %9, align 8
  %199 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %198, i32 0, i32 1
  store i8* %197, i8** %199, align 8
  %200 = load i32, i32* @LAST_TO_FIRST, align 4
  %201 = load i32*, i32** %11, align 8
  store i32 %200, i32* %201, align 4
  br label %243

202:                                              ; preds = %6
  %203 = load %struct.tree_balance*, %struct.tree_balance** %8, align 8
  %204 = load %struct.buffer_info*, %struct.buffer_info** %10, align 8
  %205 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %204, i32 0, i32 3
  store %struct.tree_balance* %203, %struct.tree_balance** %205, align 8
  %206 = load %struct.tree_balance*, %struct.tree_balance** %8, align 8
  %207 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = call i8* @PATH_PLAST_BUFFER(i32 %208)
  %210 = bitcast i8* %209 to %struct.buffer_head*
  %211 = load %struct.buffer_info*, %struct.buffer_info** %10, align 8
  %212 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %211, i32 0, i32 0
  store %struct.buffer_head* %210, %struct.buffer_head** %212, align 8
  %213 = load %struct.tree_balance*, %struct.tree_balance** %8, align 8
  %214 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = call i8* @PATH_H_PPARENT(i32 %215, i32 0)
  %217 = bitcast i8* %216 to i32*
  %218 = load %struct.buffer_info*, %struct.buffer_info** %10, align 8
  %219 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %218, i32 0, i32 2
  store i32* %217, i32** %219, align 8
  %220 = load %struct.tree_balance*, %struct.tree_balance** %8, align 8
  %221 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = call i8* @PATH_H_B_ITEM_ORDER(i32 %222, i32 0)
  %224 = load %struct.buffer_info*, %struct.buffer_info** %10, align 8
  %225 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %224, i32 0, i32 1
  store i8* %223, i8** %225, align 8
  %226 = load %struct.tree_balance*, %struct.tree_balance** %8, align 8
  %227 = load %struct.buffer_info*, %struct.buffer_info** %9, align 8
  %228 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %227, i32 0, i32 3
  store %struct.tree_balance* %226, %struct.tree_balance** %228, align 8
  %229 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %230 = load %struct.buffer_info*, %struct.buffer_info** %9, align 8
  %231 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %230, i32 0, i32 0
  store %struct.buffer_head* %229, %struct.buffer_head** %231, align 8
  %232 = load %struct.buffer_info*, %struct.buffer_info** %9, align 8
  %233 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %232, i32 0, i32 2
  store i32* null, i32** %233, align 8
  %234 = load %struct.buffer_info*, %struct.buffer_info** %9, align 8
  %235 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %234, i32 0, i32 1
  store i8* null, i8** %235, align 8
  %236 = load i32, i32* @LAST_TO_FIRST, align 4
  %237 = load i32*, i32** %11, align 8
  store i32 %236, i32* %237, align 4
  br label %243

238:                                              ; preds = %6
  %239 = load %struct.buffer_info*, %struct.buffer_info** %10, align 8
  %240 = call i32 @sb_from_bi(%struct.buffer_info* %239)
  %241 = load i32, i32* %7, align 4
  %242 = call i32 @reiserfs_panic(i32 %240, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %241)
  br label %243

243:                                              ; preds = %238, %202, %157, %112, %65, %18
  %244 = load %struct.buffer_info*, %struct.buffer_info** %10, align 8
  %245 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %244, i32 0, i32 0
  %246 = load %struct.buffer_head*, %struct.buffer_head** %245, align 8
  %247 = icmp ne %struct.buffer_head* %246, null
  br i1 %247, label %248, label %254

248:                                              ; preds = %243
  %249 = load %struct.buffer_info*, %struct.buffer_info** %9, align 8
  %250 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %249, i32 0, i32 0
  %251 = load %struct.buffer_head*, %struct.buffer_head** %250, align 8
  %252 = icmp ne %struct.buffer_head* %251, null
  %253 = xor i1 %252, true
  br label %254

254:                                              ; preds = %248, %243
  %255 = phi i1 [ true, %243 ], [ %253, %248 ]
  %256 = zext i1 %255 to i32
  %257 = load i32, i32* %7, align 4
  %258 = load %struct.buffer_info*, %struct.buffer_info** %10, align 8
  %259 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %258, i32 0, i32 0
  %260 = load %struct.buffer_head*, %struct.buffer_head** %259, align 8
  %261 = load %struct.buffer_info*, %struct.buffer_info** %9, align 8
  %262 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %261, i32 0, i32 0
  %263 = load %struct.buffer_head*, %struct.buffer_head** %262, align 8
  %264 = call i32 @RFALSE(i32 %256, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.2, i64 0, i64 0), i32 %257, %struct.buffer_head* %260, %struct.buffer_head* %263)
  ret void
}

declare dso_local i32 @memset(%struct.buffer_info*, i32, i32) #1

declare dso_local i8* @PATH_PLAST_BUFFER(i32) #1

declare dso_local i8* @PATH_H_PPARENT(i32, i32) #1

declare dso_local i8* @PATH_H_B_ITEM_ORDER(i32, i32) #1

declare dso_local i8* @get_left_neighbor_position(%struct.tree_balance*, i32) #1

declare dso_local i8* @get_right_neighbor_position(%struct.tree_balance*, i32) #1

declare dso_local i32 @reiserfs_panic(i32, i8*, i8*, i32) #1

declare dso_local i32 @sb_from_bi(%struct.buffer_info*) #1

declare dso_local i32 @RFALSE(i32, i8*, i32, %struct.buffer_head*, %struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
