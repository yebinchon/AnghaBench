; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_segment.c_nilfs_segctor_do_construct.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_segment.c_nilfs_segctor_do_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_sc_info = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__*, i32*, i32, i32, %struct.nilfs_sb_info* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.nilfs_sb_info = type { i32, %struct.the_nilfs* }
%struct.the_nilfs = type { i32, i32, i32 }
%struct.page = type { i32 }

@NILFS_ST_INIT = common dso_local global i64 0, align 8
@NILFS_SC_DIRTY = common dso_local global i32 0, align 4
@NILFS_CF_HISTORY_MASK = common dso_local global i32 0, align 4
@NILFS_ST_DONE = common dso_local global i64 0, align 8
@NILFS_CF_IFILE_STARTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nilfs_sc_info*, i32)* @nilfs_segctor_do_construct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_segctor_do_construct(%struct.nilfs_sc_info* %0, i32 %1) #0 {
  %3 = alloca %struct.nilfs_sc_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nilfs_sb_info*, align 8
  %6 = alloca %struct.the_nilfs*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nilfs_sc_info* %0, %struct.nilfs_sc_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %11 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %10, i32 0, i32 7
  %12 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %11, align 8
  store %struct.nilfs_sb_info* %12, %struct.nilfs_sb_info** %5, align 8
  %13 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %5, align 8
  %14 = getelementptr inbounds %struct.nilfs_sb_info, %struct.nilfs_sb_info* %13, i32 0, i32 1
  %15 = load %struct.the_nilfs*, %struct.the_nilfs** %14, align 8
  store %struct.the_nilfs* %15, %struct.the_nilfs** %6, align 8
  store i32 0, i32* %9, align 4
  %16 = load i64, i64* @NILFS_ST_INIT, align 8
  %17 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %18 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store i64 %16, i64* %19, align 8
  %20 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %21 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %5, align 8
  %22 = call i32 @nilfs_segctor_check_in_files(%struct.nilfs_sc_info* %20, %struct.nilfs_sb_info* %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  br label %175

27:                                               ; preds = %2
  %28 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %5, align 8
  %29 = call i64 @nilfs_test_metadata_dirty(%struct.nilfs_sb_info* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load i32, i32* @NILFS_SC_DIRTY, align 4
  %33 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %34 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %33, i32 0, i32 6
  %35 = call i32 @set_bit(i32 %32, i32* %34)
  br label %36

36:                                               ; preds = %31, %27
  %37 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %38 = call i64 @nilfs_segctor_clean(%struct.nilfs_sc_info* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %175

41:                                               ; preds = %36
  br label %42

42:                                               ; preds = %167, %41
  %43 = load i32, i32* @NILFS_CF_HISTORY_MASK, align 4
  %44 = xor i32 %43, -1
  %45 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %46 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = and i32 %48, %44
  store i32 %49, i32* %47, align 8
  %50 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %51 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  %52 = call i32 @nilfs_segctor_begin_construction(%struct.nilfs_sc_info* %50, %struct.the_nilfs* %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = call i64 @unlikely(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %42
  br label %175

57:                                               ; preds = %42
  %58 = call i32 (...) @get_seconds()
  %59 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %60 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %59, i32 0, i32 5
  store i32 %58, i32* %60, align 8
  %61 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %62 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @nilfs_segctor_collect(%struct.nilfs_sc_info* %61, %struct.the_nilfs* %62, i32 %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = call i64 @unlikely(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %57
  br label %205

69:                                               ; preds = %57
  %70 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %71 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %70, i32 0, i32 4
  %72 = load i32*, i32** %71, align 8
  %73 = icmp ne i32* %72, null
  %74 = zext i1 %73 to i32
  store i32 %74, i32* %9, align 4
  %75 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %76 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @NILFS_ST_DONE, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %92

81:                                               ; preds = %69
  %82 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %83 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %82, i32 0, i32 3
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = call i64 @NILFS_SEG_EMPTY(i32* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %81
  %89 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %90 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  %91 = call i32 @nilfs_segctor_end_construction(%struct.nilfs_sc_info* %89, %struct.the_nilfs* %90, i32 1)
  br label %175

92:                                               ; preds = %81, %69
  %93 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %94 = load i32, i32* %4, align 4
  %95 = call i32 @nilfs_segctor_assign(%struct.nilfs_sc_info* %93, i32 %94)
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %8, align 4
  %97 = call i64 @unlikely(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %92
  br label %205

100:                                              ; preds = %92
  %101 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %102 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @NILFS_CF_IFILE_STARTED, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %100
  %109 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %110 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %5, align 8
  %111 = getelementptr inbounds %struct.nilfs_sb_info, %struct.nilfs_sb_info* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @nilfs_segctor_fill_in_file_bmap(%struct.nilfs_sc_info* %109, i32 %112)
  br label %114

114:                                              ; preds = %108, %100
  %115 = load i32, i32* %9, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %128

117:                                              ; preds = %114
  %118 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %119 = call i32 @nilfs_segctor_fill_in_checkpoint(%struct.nilfs_sc_info* %118)
  store i32 %119, i32* %8, align 4
  %120 = load i32, i32* %8, align 4
  %121 = call i64 @unlikely(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %117
  br label %192

124:                                              ; preds = %117
  %125 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %126 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  %127 = call i32 @nilfs_segctor_fill_in_super_root(%struct.nilfs_sc_info* %125, %struct.the_nilfs* %126)
  br label %128

128:                                              ; preds = %124, %114
  %129 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %130 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  %131 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @nilfs_segctor_update_segusage(%struct.nilfs_sc_info* %129, i32 %132)
  %134 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %135 = call i32 @nilfs_segctor_prepare_write(%struct.nilfs_sc_info* %134, %struct.page** %7)
  store i32 %135, i32* %8, align 4
  %136 = load i32, i32* %8, align 4
  %137 = call i64 @unlikely(i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %128
  br label %182

140:                                              ; preds = %128
  %141 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %142 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  %143 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @nilfs_segctor_fill_in_checksums(%struct.nilfs_sc_info* %141, i32 %144)
  %146 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %147 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  %148 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @nilfs_segctor_write(%struct.nilfs_sc_info* %146, i32 %149)
  store i32 %150, i32* %8, align 4
  %151 = load i32, i32* %8, align 4
  %152 = call i64 @unlikely(i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %140
  br label %182

155:                                              ; preds = %140
  %156 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %157 = call i32 @nilfs_segctor_complete_write(%struct.nilfs_sc_info* %156)
  %158 = load i32, i32* %9, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %155
  %161 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %162 = call i32 @nilfs_segctor_clear_metadata_dirty(%struct.nilfs_sc_info* %161)
  br label %163

163:                                              ; preds = %160, %155
  %164 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %165 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  %166 = call i32 @nilfs_segctor_end_construction(%struct.nilfs_sc_info* %164, %struct.the_nilfs* %165, i32 0)
  br label %167

167:                                              ; preds = %163
  %168 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %169 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @NILFS_ST_DONE, align 8
  %173 = icmp ne i64 %171, %172
  br i1 %173, label %42, label %174

174:                                              ; preds = %167
  br label %175

175:                                              ; preds = %212, %174, %88, %56, %40, %26
  %176 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %177 = call i32 @nilfs_segctor_destroy_segment_buffers(%struct.nilfs_sc_info* %176)
  %178 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %179 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %5, align 8
  %180 = call i32 @nilfs_segctor_check_out_files(%struct.nilfs_sc_info* %178, %struct.nilfs_sb_info* %179)
  %181 = load i32, i32* %8, align 4
  ret i32 %181

182:                                              ; preds = %154, %139
  %183 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %184 = load %struct.page*, %struct.page** %7, align 8
  %185 = load i32, i32* %8, align 4
  %186 = call i32 @nilfs_segctor_abort_write(%struct.nilfs_sc_info* %183, %struct.page* %184, i32 %185)
  %187 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %188 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  %189 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @nilfs_segctor_cancel_segusage(%struct.nilfs_sc_info* %187, i32 %190)
  br label %192

192:                                              ; preds = %182, %123
  %193 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %194 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @NILFS_CF_IFILE_STARTED, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %192
  %201 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %202 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %201, i32 0, i32 1
  %203 = call i32 @nilfs_redirty_inodes(i32* %202)
  br label %204

204:                                              ; preds = %200, %192
  br label %205

205:                                              ; preds = %204, %99, %68
  %206 = call i64 (...) @nilfs_doing_gc()
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %212

208:                                              ; preds = %205
  %209 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %210 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %209, i32 0, i32 0
  %211 = call i32 @nilfs_redirty_inodes(i32* %210)
  br label %212

212:                                              ; preds = %208, %205
  %213 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %214 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  %215 = load i32, i32* %8, align 4
  %216 = call i32 @nilfs_segctor_end_construction(%struct.nilfs_sc_info* %213, %struct.the_nilfs* %214, i32 %215)
  br label %175
}

declare dso_local i32 @nilfs_segctor_check_in_files(%struct.nilfs_sc_info*, %struct.nilfs_sb_info*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @nilfs_test_metadata_dirty(%struct.nilfs_sb_info*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @nilfs_segctor_clean(%struct.nilfs_sc_info*) #1

declare dso_local i32 @nilfs_segctor_begin_construction(%struct.nilfs_sc_info*, %struct.the_nilfs*) #1

declare dso_local i32 @get_seconds(...) #1

declare dso_local i32 @nilfs_segctor_collect(%struct.nilfs_sc_info*, %struct.the_nilfs*, i32) #1

declare dso_local i64 @NILFS_SEG_EMPTY(i32*) #1

declare dso_local i32 @nilfs_segctor_end_construction(%struct.nilfs_sc_info*, %struct.the_nilfs*, i32) #1

declare dso_local i32 @nilfs_segctor_assign(%struct.nilfs_sc_info*, i32) #1

declare dso_local i32 @nilfs_segctor_fill_in_file_bmap(%struct.nilfs_sc_info*, i32) #1

declare dso_local i32 @nilfs_segctor_fill_in_checkpoint(%struct.nilfs_sc_info*) #1

declare dso_local i32 @nilfs_segctor_fill_in_super_root(%struct.nilfs_sc_info*, %struct.the_nilfs*) #1

declare dso_local i32 @nilfs_segctor_update_segusage(%struct.nilfs_sc_info*, i32) #1

declare dso_local i32 @nilfs_segctor_prepare_write(%struct.nilfs_sc_info*, %struct.page**) #1

declare dso_local i32 @nilfs_segctor_fill_in_checksums(%struct.nilfs_sc_info*, i32) #1

declare dso_local i32 @nilfs_segctor_write(%struct.nilfs_sc_info*, i32) #1

declare dso_local i32 @nilfs_segctor_complete_write(%struct.nilfs_sc_info*) #1

declare dso_local i32 @nilfs_segctor_clear_metadata_dirty(%struct.nilfs_sc_info*) #1

declare dso_local i32 @nilfs_segctor_destroy_segment_buffers(%struct.nilfs_sc_info*) #1

declare dso_local i32 @nilfs_segctor_check_out_files(%struct.nilfs_sc_info*, %struct.nilfs_sb_info*) #1

declare dso_local i32 @nilfs_segctor_abort_write(%struct.nilfs_sc_info*, %struct.page*, i32) #1

declare dso_local i32 @nilfs_segctor_cancel_segusage(%struct.nilfs_sc_info*, i32) #1

declare dso_local i32 @nilfs_redirty_inodes(i32*) #1

declare dso_local i64 @nilfs_doing_gc(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
