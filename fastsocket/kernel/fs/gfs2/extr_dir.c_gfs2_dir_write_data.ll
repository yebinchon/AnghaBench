; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_dir.c_gfs2_dir_write_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_dir.c_gfs2_dir_write_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.gfs2_sbd = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.buffer_head = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@CURRENT_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_inode*, i8*, i32, i32)* @gfs2_dir_write_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_dir_write_data(%struct.gfs2_inode* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gfs2_inode*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.gfs2_sbd*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.buffer_head*, align 8
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %21 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %22 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %21, i32 0, i32 1
  %23 = call %struct.gfs2_sbd* @GFS2_SB(%struct.TYPE_6__* %22)
  store %struct.gfs2_sbd* %23, %struct.gfs2_sbd** %10, align 8
  store i64 0, i64* %14, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %225

27:                                               ; preds = %4
  %28 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %29 = call i64 @gfs2_is_stuffed(%struct.gfs2_inode* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %49

31:                                               ; preds = %27
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %9, align 4
  %34 = add i32 %32, %33
  %35 = zext i32 %34 to i64
  %36 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %10, align 8
  %37 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = sub i64 %40, 4
  %42 = icmp ule i64 %35, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %31
  %44 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @gfs2_dir_write_stuffed(%struct.gfs2_inode* %44, i8* %45, i32 %46, i32 %47)
  store i32 %48, i32* %5, align 4
  br label %225

49:                                               ; preds = %31, %27
  %50 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %10, align 8
  %51 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %52 = call i32 @gfs2_is_jdata(%struct.gfs2_inode* %51)
  %53 = call i64 @gfs2_assert_warn(%struct.gfs2_sbd* %50, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %225

58:                                               ; preds = %49
  %59 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %60 = call i64 @gfs2_is_stuffed(%struct.gfs2_inode* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %58
  %63 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %64 = call i32 @gfs2_unstuff_dinode(%struct.gfs2_inode* %63, i32* null)
  store i32 %64, i32* %17, align 4
  %65 = load i32, i32* %17, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i32, i32* %17, align 4
  store i32 %68, i32* %5, align 4
  br label %225

69:                                               ; preds = %62
  br label %70

70:                                               ; preds = %69, %58
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %12, align 4
  %73 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %10, align 8
  %74 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @do_div(i32 %72, i32 %75)
  %77 = sext i32 %76 to i64
  %78 = add i64 %77, 4
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %15, align 4
  br label %80

80:                                               ; preds = %144, %70
  %81 = load i32, i32* %16, align 4
  %82 = load i32, i32* %9, align 4
  %83 = icmp ult i32 %81, %82
  br i1 %83, label %84, label %174

84:                                               ; preds = %80
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %16, align 4
  %87 = sub i32 %85, %86
  store i32 %87, i32* %19, align 4
  %88 = load i32, i32* %19, align 4
  %89 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %10, align 8
  %90 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %15, align 4
  %94 = sub i32 %92, %93
  %95 = icmp ugt i32 %88, %94
  br i1 %95, label %96, label %103

96:                                               ; preds = %84
  %97 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %10, align 8
  %98 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %15, align 4
  %102 = sub i32 %100, %101
  store i32 %102, i32* %19, align 4
  br label %103

103:                                              ; preds = %96, %84
  %104 = load i64, i64* %14, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %123, label %106

106:                                              ; preds = %103
  store i32 1, i32* %18, align 4
  %107 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %108 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %107, i32 0, i32 1
  %109 = load i32, i32* %12, align 4
  %110 = call i32 @gfs2_extent_map(%struct.TYPE_6__* %108, i32 %109, i32* %18, i32* %13, i64* %14)
  store i32 %110, i32* %17, align 4
  %111 = load i32, i32* %17, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %106
  br label %219

114:                                              ; preds = %106
  %115 = load i32, i32* @EIO, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %17, align 4
  %117 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %10, align 8
  %118 = load i32, i32* %13, align 4
  %119 = call i64 @gfs2_assert_withdraw(%struct.gfs2_sbd* %117, i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %114
  br label %219

122:                                              ; preds = %114
  br label %123

123:                                              ; preds = %122, %103
  %124 = load i32, i32* %19, align 4
  %125 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %10, align 8
  %126 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = icmp eq i32 %124, %127
  br i1 %128, label %132, label %129

129:                                              ; preds = %123
  %130 = load i32, i32* %18, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %129, %123
  %133 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %134 = load i32, i32* %13, align 4
  %135 = call i32 @gfs2_dir_get_new_buffer(%struct.gfs2_inode* %133, i32 %134, %struct.buffer_head** %20)
  store i32 %135, i32* %17, align 4
  br label %140

136:                                              ; preds = %129
  %137 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %138 = load i32, i32* %13, align 4
  %139 = call i32 @gfs2_dir_get_existing_buffer(%struct.gfs2_inode* %137, i32 %138, %struct.buffer_head** %20)
  store i32 %139, i32* %17, align 4
  br label %140

140:                                              ; preds = %136, %132
  %141 = load i32, i32* %17, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %140
  br label %219

144:                                              ; preds = %140
  %145 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %146 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %149 = call i32 @gfs2_trans_add_meta(i32 %147, %struct.buffer_head* %148)
  %150 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %151 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i32, i32* %15, align 4
  %154 = zext i32 %153 to i64
  %155 = add nsw i64 %152, %154
  %156 = load i8*, i8** %7, align 8
  %157 = load i32, i32* %19, align 4
  %158 = call i32 @memcpy(i64 %155, i8* %156, i32 %157)
  %159 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %160 = call i32 @brelse(%struct.buffer_head* %159)
  %161 = load i32, i32* %19, align 4
  %162 = load i8*, i8** %7, align 8
  %163 = zext i32 %161 to i64
  %164 = getelementptr inbounds i8, i8* %162, i64 %163
  store i8* %164, i8** %7, align 8
  %165 = load i32, i32* %19, align 4
  %166 = load i32, i32* %16, align 4
  %167 = add i32 %166, %165
  store i32 %167, i32* %16, align 4
  %168 = load i32, i32* %12, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %12, align 4
  %170 = load i32, i32* %13, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %13, align 4
  %172 = load i64, i64* %14, align 8
  %173 = add nsw i64 %172, -1
  store i64 %173, i64* %14, align 8
  store i32 4, i32* %15, align 4
  br label %80

174:                                              ; preds = %80
  br label %175

175:                                              ; preds = %222, %174
  %176 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %177 = call i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode* %176, %struct.buffer_head** %11)
  store i32 %177, i32* %17, align 4
  %178 = load i32, i32* %17, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %175
  %181 = load i32, i32* %17, align 4
  store i32 %181, i32* %5, align 4
  br label %225

182:                                              ; preds = %175
  %183 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %184 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* %8, align 4
  %188 = load i32, i32* %16, align 4
  %189 = add nsw i32 %187, %188
  %190 = icmp slt i32 %186, %189
  br i1 %190, label %191, label %198

191:                                              ; preds = %182
  %192 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %193 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %192, i32 0, i32 1
  %194 = load i32, i32* %8, align 4
  %195 = load i32, i32* %16, align 4
  %196 = add nsw i32 %194, %195
  %197 = call i32 @i_size_write(%struct.TYPE_6__* %193, i32 %196)
  br label %198

198:                                              ; preds = %191, %182
  %199 = load i32, i32* @CURRENT_TIME, align 4
  %200 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %201 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 1
  store i32 %199, i32* %202, align 4
  %203 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %204 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 2
  store i32 %199, i32* %205, align 4
  %206 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %207 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %210 = call i32 @gfs2_trans_add_meta(i32 %208, %struct.buffer_head* %209)
  %211 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %212 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %213 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = call i32 @gfs2_dinode_out(%struct.gfs2_inode* %211, i64 %214)
  %216 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %217 = call i32 @brelse(%struct.buffer_head* %216)
  %218 = load i32, i32* %16, align 4
  store i32 %218, i32* %5, align 4
  br label %225

219:                                              ; preds = %143, %121, %113
  %220 = load i32, i32* %16, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %219
  br label %175

223:                                              ; preds = %219
  %224 = load i32, i32* %17, align 4
  store i32 %224, i32* %5, align 4
  br label %225

225:                                              ; preds = %223, %198, %180, %67, %55, %43, %26
  %226 = load i32, i32* %5, align 4
  ret i32 %226
}

declare dso_local %struct.gfs2_sbd* @GFS2_SB(%struct.TYPE_6__*) #1

declare dso_local i64 @gfs2_is_stuffed(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_dir_write_stuffed(%struct.gfs2_inode*, i8*, i32, i32) #1

declare dso_local i64 @gfs2_assert_warn(%struct.gfs2_sbd*, i32) #1

declare dso_local i32 @gfs2_is_jdata(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_unstuff_dinode(%struct.gfs2_inode*, i32*) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @gfs2_extent_map(%struct.TYPE_6__*, i32, i32*, i32*, i64*) #1

declare dso_local i64 @gfs2_assert_withdraw(%struct.gfs2_sbd*, i32) #1

declare dso_local i32 @gfs2_dir_get_new_buffer(%struct.gfs2_inode*, i32, %struct.buffer_head**) #1

declare dso_local i32 @gfs2_dir_get_existing_buffer(%struct.gfs2_inode*, i32, %struct.buffer_head**) #1

declare dso_local i32 @gfs2_trans_add_meta(i32, %struct.buffer_head*) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode*, %struct.buffer_head**) #1

declare dso_local i32 @i_size_write(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @gfs2_dinode_out(%struct.gfs2_inode*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
