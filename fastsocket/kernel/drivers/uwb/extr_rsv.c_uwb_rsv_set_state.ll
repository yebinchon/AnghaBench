; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_rsv.c_uwb_rsv_set_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_rsv.c_uwb_rsv_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rsv = type { i32, i32, %struct.TYPE_9__*, %struct.TYPE_10__, %struct.uwb_rsv_move }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.uwb_rsv_move = type { %struct.TYPE_10__, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"SC\00", align 1
@UWB_NUM_MAS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"unhandled state: %s (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uwb_rsv_set_state(%struct.uwb_rsv* %0, i32 %1) #0 {
  %3 = alloca %struct.uwb_rsv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.uwb_rsv_move*, align 8
  store %struct.uwb_rsv* %0, %struct.uwb_rsv** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %7 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %6, i32 0, i32 4
  store %struct.uwb_rsv_move* %7, %struct.uwb_rsv_move** %5, align 8
  %8 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %9 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %2
  %14 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %15 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %20 [
    i32 140, label %17
    i32 136, label %17
    i32 137, label %17
    i32 135, label %17
    i32 133, label %17
    i32 130, label %17
    i32 128, label %17
    i32 141, label %17
  ]

17:                                               ; preds = %13, %13, %13, %13, %13, %13, %13, %13
  %18 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %19 = call i32 @uwb_rsv_stroke_timer(%struct.uwb_rsv* %18)
  br label %21

20:                                               ; preds = %13
  br label %21

21:                                               ; preds = %20, %17
  br label %228

22:                                               ; preds = %2
  %23 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %24 = call i32 @uwb_rsv_dump(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.uwb_rsv* %23)
  %25 = load i32, i32* %4, align 4
  switch i32 %25, label %218 [
    i32 141, label %26
    i32 139, label %31
    i32 134, label %34
    i32 138, label %37
    i32 140, label %54
    i32 136, label %84
    i32 137, label %89
    i32 135, label %132
    i32 133, label %185
    i32 128, label %185
    i32 131, label %198
    i32 132, label %201
    i32 129, label %204
    i32 130, label %207
  ]

26:                                               ; preds = %22
  %27 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %28 = call i32 @uwb_rsv_state_update(%struct.uwb_rsv* %27, i32 141)
  %29 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %30 = call i32 @uwb_rsv_callback(%struct.uwb_rsv* %29)
  br label %228

31:                                               ; preds = %22
  %32 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %33 = call i32 @uwb_rsv_state_update(%struct.uwb_rsv* %32, i32 139)
  br label %228

34:                                               ; preds = %22
  %35 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %36 = call i32 @uwb_rsv_state_update(%struct.uwb_rsv* %35, i32 134)
  br label %228

37:                                               ; preds = %22
  %38 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %39 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %43 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.uwb_rsv_move*, %struct.uwb_rsv_move** %5, align 8
  %47 = getelementptr inbounds %struct.uwb_rsv_move, %struct.uwb_rsv_move* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @UWB_NUM_MAS, align 4
  %51 = call i32 @bitmap_andnot(i32 %41, i32 %45, i32 %49, i32 %50)
  %52 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %53 = call i32 @uwb_rsv_state_update(%struct.uwb_rsv* %52, i32 138)
  br label %228

54:                                               ; preds = %22
  %55 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %56 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp eq i32 %57, 138
  br i1 %58, label %64, label %59

59:                                               ; preds = %54
  %60 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %61 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp eq i32 %62, 135
  br i1 %63, label %64, label %73

64:                                               ; preds = %59, %54
  %65 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %66 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %65, i32 0, i32 2
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  %68 = load %struct.uwb_rsv_move*, %struct.uwb_rsv_move** %5, align 8
  %69 = getelementptr inbounds %struct.uwb_rsv_move, %struct.uwb_rsv_move* %68, i32 0, i32 0
  %70 = call i32 @uwb_drp_avail_release(%struct.TYPE_9__* %67, %struct.TYPE_10__* %69)
  %71 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %72 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %71, i32 0, i32 1
  store i32 0, i32* %72, align 4
  br label %73

73:                                               ; preds = %64, %59
  %74 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %75 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %74, i32 0, i32 2
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %78 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %77, i32 0, i32 3
  %79 = call i32 @uwb_drp_avail_reserve(%struct.TYPE_9__* %76, %struct.TYPE_10__* %78)
  %80 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %81 = call i32 @uwb_rsv_state_update(%struct.uwb_rsv* %80, i32 140)
  %82 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %83 = call i32 @uwb_rsv_callback(%struct.uwb_rsv* %82)
  br label %228

84:                                               ; preds = %22
  %85 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %86 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %85, i32 0, i32 1
  store i32 1, i32* %86, align 4
  %87 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %88 = call i32 @uwb_rsv_state_update(%struct.uwb_rsv* %87, i32 136)
  br label %228

89:                                               ; preds = %22
  %90 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %91 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %90, i32 0, i32 1
  store i32 0, i32* %91, align 4
  %92 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %93 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %92, i32 0, i32 2
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %93, align 8
  %95 = load %struct.uwb_rsv_move*, %struct.uwb_rsv_move** %5, align 8
  %96 = getelementptr inbounds %struct.uwb_rsv_move, %struct.uwb_rsv_move* %95, i32 0, i32 0
  %97 = call i32 @uwb_drp_avail_reserve(%struct.TYPE_9__* %94, %struct.TYPE_10__* %96)
  %98 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %99 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %103 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.uwb_rsv_move*, %struct.uwb_rsv_move** %5, align 8
  %107 = getelementptr inbounds %struct.uwb_rsv_move, %struct.uwb_rsv_move* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @UWB_NUM_MAS, align 4
  %111 = call i32 @bitmap_or(i32 %101, i32 %105, i32 %109, i32 %110)
  %112 = load %struct.uwb_rsv_move*, %struct.uwb_rsv_move** %5, align 8
  %113 = getelementptr inbounds %struct.uwb_rsv_move, %struct.uwb_rsv_move* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %117 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %116, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %119, %115
  store i32 %120, i32* %118, align 4
  %121 = load %struct.uwb_rsv_move*, %struct.uwb_rsv_move** %5, align 8
  %122 = getelementptr inbounds %struct.uwb_rsv_move, %struct.uwb_rsv_move* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %126 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %125, i32 0, i32 3
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = add nsw i32 %128, %124
  store i32 %129, i32* %127, align 8
  %130 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %131 = call i32 @uwb_rsv_state_update(%struct.uwb_rsv* %130, i32 137)
  br label %228

132:                                              ; preds = %22
  %133 = load %struct.uwb_rsv_move*, %struct.uwb_rsv_move** %5, align 8
  %134 = getelementptr inbounds %struct.uwb_rsv_move, %struct.uwb_rsv_move* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %138 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %137, i32 0, i32 3
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.uwb_rsv_move*, %struct.uwb_rsv_move** %5, align 8
  %142 = getelementptr inbounds %struct.uwb_rsv_move, %struct.uwb_rsv_move* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @UWB_NUM_MAS, align 4
  %146 = call i32 @bitmap_andnot(i32 %136, i32 %140, i32 %144, i32 %145)
  %147 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %148 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %147, i32 0, i32 1
  store i32 1, i32* %148, align 4
  %149 = load %struct.uwb_rsv_move*, %struct.uwb_rsv_move** %5, align 8
  %150 = getelementptr inbounds %struct.uwb_rsv_move, %struct.uwb_rsv_move* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %154 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %153, i32 0, i32 3
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 3
  store i32 %152, i32* %155, align 4
  %156 = load %struct.uwb_rsv_move*, %struct.uwb_rsv_move** %5, align 8
  %157 = getelementptr inbounds %struct.uwb_rsv_move, %struct.uwb_rsv_move* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %161 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %160, i32 0, i32 3
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 2
  store i32 %159, i32* %162, align 8
  %163 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %164 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %163, i32 0, i32 3
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.uwb_rsv_move*, %struct.uwb_rsv_move** %5, align 8
  %168 = getelementptr inbounds %struct.uwb_rsv_move, %struct.uwb_rsv_move* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @UWB_NUM_MAS, align 4
  %172 = call i32 @bitmap_copy(i32 %166, i32 %170, i32 %171)
  %173 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %174 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %173, i32 0, i32 3
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.uwb_rsv_move*, %struct.uwb_rsv_move** %5, align 8
  %178 = getelementptr inbounds %struct.uwb_rsv_move, %struct.uwb_rsv_move* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @UWB_NUM_MAS, align 4
  %182 = call i32 @bitmap_copy(i32 %176, i32 %180, i32 %181)
  %183 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %184 = call i32 @uwb_rsv_state_update(%struct.uwb_rsv* %183, i32 135)
  br label %228

185:                                              ; preds = %22, %22
  %186 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %187 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %186, i32 0, i32 1
  store i32 0, i32* %187, align 4
  %188 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %189 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %188, i32 0, i32 2
  %190 = load %struct.TYPE_9__*, %struct.TYPE_9__** %189, align 8
  %191 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %192 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %191, i32 0, i32 3
  %193 = call i32 @uwb_drp_avail_reserve(%struct.TYPE_9__* %190, %struct.TYPE_10__* %192)
  %194 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %195 = call i32 @uwb_rsv_state_update(%struct.uwb_rsv* %194, i32 133)
  %196 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %197 = call i32 @uwb_rsv_callback(%struct.uwb_rsv* %196)
  br label %228

198:                                              ; preds = %22
  %199 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %200 = call i32 @uwb_rsv_state_update(%struct.uwb_rsv* %199, i32 131)
  br label %228

201:                                              ; preds = %22
  %202 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %203 = call i32 @uwb_rsv_state_update(%struct.uwb_rsv* %202, i32 132)
  br label %228

204:                                              ; preds = %22
  %205 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %206 = call i32 @uwb_rsv_state_update(%struct.uwb_rsv* %205, i32 129)
  br label %228

207:                                              ; preds = %22
  %208 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %209 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %208, i32 0, i32 1
  store i32 1, i32* %209, align 4
  %210 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %211 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %210, i32 0, i32 2
  %212 = load %struct.TYPE_9__*, %struct.TYPE_9__** %211, align 8
  %213 = load %struct.uwb_rsv_move*, %struct.uwb_rsv_move** %5, align 8
  %214 = getelementptr inbounds %struct.uwb_rsv_move, %struct.uwb_rsv_move* %213, i32 0, i32 0
  %215 = call i32 @uwb_drp_avail_reserve(%struct.TYPE_9__* %212, %struct.TYPE_10__* %214)
  %216 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %217 = call i32 @uwb_rsv_state_update(%struct.uwb_rsv* %216, i32 130)
  br label %228

218:                                              ; preds = %22
  %219 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %220 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %219, i32 0, i32 2
  %221 = load %struct.TYPE_9__*, %struct.TYPE_9__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 0
  %224 = load i32, i32* %4, align 4
  %225 = call i32 @uwb_rsv_state_str(i32 %224)
  %226 = load i32, i32* %4, align 4
  %227 = call i32 @dev_err(i32* %223, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %225, i32 %226)
  br label %228

228:                                              ; preds = %21, %218, %207, %204, %201, %198, %185, %132, %89, %84, %73, %37, %34, %31, %26
  ret void
}

declare dso_local i32 @uwb_rsv_stroke_timer(%struct.uwb_rsv*) #1

declare dso_local i32 @uwb_rsv_dump(i8*, %struct.uwb_rsv*) #1

declare dso_local i32 @uwb_rsv_state_update(%struct.uwb_rsv*, i32) #1

declare dso_local i32 @uwb_rsv_callback(%struct.uwb_rsv*) #1

declare dso_local i32 @bitmap_andnot(i32, i32, i32, i32) #1

declare dso_local i32 @uwb_drp_avail_release(%struct.TYPE_9__*, %struct.TYPE_10__*) #1

declare dso_local i32 @uwb_drp_avail_reserve(%struct.TYPE_9__*, %struct.TYPE_10__*) #1

declare dso_local i32 @bitmap_or(i32, i32, i32, i32) #1

declare dso_local i32 @bitmap_copy(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @uwb_rsv_state_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
