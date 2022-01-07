; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ctree.c_btrfs_search_old_slot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ctree.c_btrfs_search_old_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { i32 }
%struct.btrfs_key = type { i32 }
%struct.btrfs_path = type { i32, i32*, i32, %struct.extent_buffer**, i8**, i64 }
%struct.extent_buffer = type { i32 }

@BTRFS_READ_LOCK = common dso_local global i8* null, align 8
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_search_old_slot(%struct.btrfs_root* %0, %struct.btrfs_key* %1, %struct.btrfs_path* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.btrfs_root*, align 8
  %7 = alloca %struct.btrfs_key*, align 8
  %8 = alloca %struct.btrfs_path*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.extent_buffer*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.btrfs_root* %0, %struct.btrfs_root** %6, align 8
  store %struct.btrfs_key* %1, %struct.btrfs_key** %7, align 8
  store %struct.btrfs_path* %2, %struct.btrfs_path** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 1, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %18 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %19 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %16, align 4
  %21 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %22 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %21, i32 0, i32 3
  %23 = load %struct.extent_buffer**, %struct.extent_buffer*** %22, align 8
  %24 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %23, i64 0
  %25 = load %struct.extent_buffer*, %struct.extent_buffer** %24, align 8
  %26 = icmp ne %struct.extent_buffer* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i32 @WARN_ON(i32 %27)
  %29 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %30 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %29, i32 0, i32 5
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @BUG_ON(i32 %34)
  %36 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %37 = load %struct.btrfs_key*, %struct.btrfs_key** %7, align 8
  %38 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %39 = call i32 @btrfs_search_slot(i32* null, %struct.btrfs_root* %36, %struct.btrfs_key* %37, %struct.btrfs_path* %38, i32 0, i32 0)
  store i32 %39, i32* %5, align 4
  br label %240

40:                                               ; preds = %4
  br label %41

41:                                               ; preds = %128, %40
  %42 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call %struct.extent_buffer* @get_old_root(%struct.btrfs_root* %42, i32 %43)
  store %struct.extent_buffer* %44, %struct.extent_buffer** %10, align 8
  %45 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %46 = call i32 @btrfs_header_level(%struct.extent_buffer* %45)
  store i32 %46, i32* %14, align 4
  %47 = load i8*, i8** @BTRFS_READ_LOCK, align 8
  %48 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %49 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %48, i32 0, i32 4
  %50 = load i8**, i8*** %49, align 8
  %51 = load i32, i32* %14, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %50, i64 %52
  store i8* %47, i8** %53, align 8
  br label %54

54:                                               ; preds = %222, %41
  %55 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %56 = icmp ne %struct.extent_buffer* %55, null
  br i1 %56, label %57, label %223

57:                                               ; preds = %54
  %58 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %59 = call i32 @btrfs_header_level(%struct.extent_buffer* %58)
  store i32 %59, i32* %14, align 4
  %60 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %61 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %62 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %61, i32 0, i32 3
  %63 = load %struct.extent_buffer**, %struct.extent_buffer*** %62, align 8
  %64 = load i32, i32* %14, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %63, i64 %65
  store %struct.extent_buffer* %60, %struct.extent_buffer** %66, align 8
  %67 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %68 = call i32 @btrfs_clear_path_blocking(%struct.btrfs_path* %67, %struct.extent_buffer* null, i8* null)
  %69 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %70 = load i32, i32* %14, align 4
  %71 = add nsw i32 %70, 1
  %72 = call i32 @btrfs_unlock_up_safe(%struct.btrfs_path* %69, i32 %71)
  %73 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %74 = load %struct.btrfs_key*, %struct.btrfs_key** %7, align 8
  %75 = load i32, i32* %14, align 4
  %76 = call i32 @bin_search(%struct.extent_buffer* %73, %struct.btrfs_key* %74, i32 %75, i32* %11)
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %14, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %210

79:                                               ; preds = %57
  store i32 0, i32* %17, align 4
  %80 = load i32, i32* %12, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %79
  %83 = load i32, i32* %11, align 4
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  store i32 1, i32* %17, align 4
  %86 = load i32, i32* %11, align 4
  %87 = sub nsw i32 %86, 1
  store i32 %87, i32* %11, align 4
  br label %88

88:                                               ; preds = %85, %82, %79
  %89 = load i32, i32* %11, align 4
  %90 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %91 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %14, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  store i32 %89, i32* %95, align 4
  %96 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %97 = load i32, i32* %14, align 4
  %98 = load i32, i32* %15, align 4
  %99 = call i32 @unlock_up(%struct.btrfs_path* %96, i32 %97, i32 %98, i32 0, i32* null)
  %100 = load i32, i32* %14, align 4
  %101 = load i32, i32* %16, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %116

103:                                              ; preds = %88
  %104 = load i32, i32* %17, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %103
  %107 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %108 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %14, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 4
  br label %115

115:                                              ; preds = %106, %103
  br label %224

116:                                              ; preds = %88
  %117 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %118 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %119 = load i32, i32* %14, align 4
  %120 = load i32, i32* %11, align 4
  %121 = load %struct.btrfs_key*, %struct.btrfs_key** %7, align 8
  %122 = load i32, i32* %9, align 4
  %123 = call i32 @read_block_for_search(i32* null, %struct.btrfs_root* %117, %struct.btrfs_path* %118, %struct.extent_buffer** %10, i32 %119, i32 %120, %struct.btrfs_key* %121, i32 %122)
  store i32 %123, i32* %13, align 4
  %124 = load i32, i32* %13, align 4
  %125 = load i32, i32* @EAGAIN, align 4
  %126 = sub nsw i32 0, %125
  %127 = icmp eq i32 %124, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %116
  br label %41

129:                                              ; preds = %116
  %130 = load i32, i32* %13, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %129
  %133 = load i32, i32* %13, align 4
  store i32 %133, i32* %12, align 4
  br label %224

134:                                              ; preds = %129
  %135 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %136 = call i32 @btrfs_header_level(%struct.extent_buffer* %135)
  store i32 %136, i32* %14, align 4
  %137 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %138 = call i32 @btrfs_try_tree_read_lock(%struct.extent_buffer* %137)
  store i32 %138, i32* %13, align 4
  %139 = load i32, i32* %13, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %150, label %141

141:                                              ; preds = %134
  %142 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %143 = call i32 @btrfs_set_path_blocking(%struct.btrfs_path* %142)
  %144 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %145 = call i32 @btrfs_tree_read_lock(%struct.extent_buffer* %144)
  %146 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %147 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %148 = load i8*, i8** @BTRFS_READ_LOCK, align 8
  %149 = call i32 @btrfs_clear_path_blocking(%struct.btrfs_path* %146, %struct.extent_buffer* %147, i8* %148)
  br label %150

150:                                              ; preds = %141, %134
  %151 = load i8*, i8** @BTRFS_READ_LOCK, align 8
  %152 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %153 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %152, i32 0, i32 4
  %154 = load i8**, i8*** %153, align 8
  %155 = load i32, i32* %14, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8*, i8** %154, i64 %156
  store i8* %151, i8** %157, align 8
  %158 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %159 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %160 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %159, i32 0, i32 3
  %161 = load %struct.extent_buffer**, %struct.extent_buffer*** %160, align 8
  %162 = load i32, i32* %14, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %161, i64 %163
  store %struct.extent_buffer* %158, %struct.extent_buffer** %164, align 8
  %165 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %166 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %169 = load i32, i32* %9, align 4
  %170 = call %struct.extent_buffer* @tree_mod_log_rewind(i32 %167, %struct.extent_buffer* %168, i32 %169)
  store %struct.extent_buffer* %170, %struct.extent_buffer** %10, align 8
  %171 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %172 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %173 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %172, i32 0, i32 3
  %174 = load %struct.extent_buffer**, %struct.extent_buffer*** %173, align 8
  %175 = load i32, i32* %14, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %174, i64 %176
  %178 = load %struct.extent_buffer*, %struct.extent_buffer** %177, align 8
  %179 = icmp ne %struct.extent_buffer* %171, %178
  br i1 %179, label %180, label %209

180:                                              ; preds = %150
  %181 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %182 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %181, i32 0, i32 3
  %183 = load %struct.extent_buffer**, %struct.extent_buffer*** %182, align 8
  %184 = load i32, i32* %14, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %183, i64 %185
  %187 = load %struct.extent_buffer*, %struct.extent_buffer** %186, align 8
  %188 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %189 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %188, i32 0, i32 4
  %190 = load i8**, i8*** %189, align 8
  %191 = load i32, i32* %14, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i8*, i8** %190, i64 %192
  %194 = load i8*, i8** %193, align 8
  %195 = call i32 @btrfs_tree_unlock_rw(%struct.extent_buffer* %187, i8* %194)
  %196 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %197 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %196, i32 0, i32 4
  %198 = load i8**, i8*** %197, align 8
  %199 = load i32, i32* %14, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i8*, i8** %198, i64 %200
  store i8* null, i8** %201, align 8
  %202 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %203 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %204 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %203, i32 0, i32 3
  %205 = load %struct.extent_buffer**, %struct.extent_buffer*** %204, align 8
  %206 = load i32, i32* %14, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %205, i64 %207
  store %struct.extent_buffer* %202, %struct.extent_buffer** %208, align 8
  br label %209

209:                                              ; preds = %180, %150
  br label %222

210:                                              ; preds = %57
  %211 = load i32, i32* %11, align 4
  %212 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %213 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %212, i32 0, i32 1
  %214 = load i32*, i32** %213, align 8
  %215 = load i32, i32* %14, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %214, i64 %216
  store i32 %211, i32* %217, align 4
  %218 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %219 = load i32, i32* %14, align 4
  %220 = load i32, i32* %15, align 4
  %221 = call i32 @unlock_up(%struct.btrfs_path* %218, i32 %219, i32 %220, i32 0, i32* null)
  br label %224

222:                                              ; preds = %209
  br label %54

223:                                              ; preds = %54
  store i32 1, i32* %12, align 4
  br label %224

224:                                              ; preds = %223, %210, %132, %115
  %225 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %226 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 8
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %232, label %229

229:                                              ; preds = %224
  %230 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %231 = call i32 @btrfs_set_path_blocking(%struct.btrfs_path* %230)
  br label %232

232:                                              ; preds = %229, %224
  %233 = load i32, i32* %12, align 4
  %234 = icmp slt i32 %233, 0
  br i1 %234, label %235, label %238

235:                                              ; preds = %232
  %236 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %237 = call i32 @btrfs_release_path(%struct.btrfs_path* %236)
  br label %238

238:                                              ; preds = %235, %232
  %239 = load i32, i32* %12, align 4
  store i32 %239, i32* %5, align 4
  br label %240

240:                                              ; preds = %238, %33
  %241 = load i32, i32* %5, align 4
  ret i32 %241
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @btrfs_search_slot(i32*, %struct.btrfs_root*, %struct.btrfs_key*, %struct.btrfs_path*, i32, i32) #1

declare dso_local %struct.extent_buffer* @get_old_root(%struct.btrfs_root*, i32) #1

declare dso_local i32 @btrfs_header_level(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_clear_path_blocking(%struct.btrfs_path*, %struct.extent_buffer*, i8*) #1

declare dso_local i32 @btrfs_unlock_up_safe(%struct.btrfs_path*, i32) #1

declare dso_local i32 @bin_search(%struct.extent_buffer*, %struct.btrfs_key*, i32, i32*) #1

declare dso_local i32 @unlock_up(%struct.btrfs_path*, i32, i32, i32, i32*) #1

declare dso_local i32 @read_block_for_search(i32*, %struct.btrfs_root*, %struct.btrfs_path*, %struct.extent_buffer**, i32, i32, %struct.btrfs_key*, i32) #1

declare dso_local i32 @btrfs_try_tree_read_lock(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_set_path_blocking(%struct.btrfs_path*) #1

declare dso_local i32 @btrfs_tree_read_lock(%struct.extent_buffer*) #1

declare dso_local %struct.extent_buffer* @tree_mod_log_rewind(i32, %struct.extent_buffer*, i32) #1

declare dso_local i32 @btrfs_tree_unlock_rw(%struct.extent_buffer*, i8*) #1

declare dso_local i32 @btrfs_release_path(%struct.btrfs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
