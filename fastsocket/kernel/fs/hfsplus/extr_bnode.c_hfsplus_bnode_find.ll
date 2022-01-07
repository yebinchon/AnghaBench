; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hfsplus/extr_bnode.c_hfsplus_bnode_find.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hfsplus/extr_bnode.c_hfsplus_bnode_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfs_bnode = type { i32, i32, i32, i32, i32, i32*, i8*, i8*, i64 }
%struct.hfs_btree = type { i32, i32, i32 }
%struct.hfs_bnode_desc = type { i32, i32, i32, i32, i32 }

@HFS_BNODE_NEW = common dso_local global i32 0, align 4
@HFS_BNODE_ERROR = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hfs_bnode* @hfs_bnode_find(%struct.hfs_btree* %0, i32 %1) #0 {
  %3 = alloca %struct.hfs_bnode*, align 8
  %4 = alloca %struct.hfs_btree*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hfs_bnode*, align 8
  %7 = alloca %struct.hfs_bnode_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.hfs_btree* %0, %struct.hfs_btree** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.hfs_btree*, %struct.hfs_btree** %4, align 8
  %15 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %14, i32 0, i32 2
  %16 = call i32 @spin_lock(i32* %15)
  %17 = load %struct.hfs_btree*, %struct.hfs_btree** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call %struct.hfs_bnode* @hfs_bnode_findhash(%struct.hfs_btree* %17, i32 %18)
  store %struct.hfs_bnode* %19, %struct.hfs_bnode** %6, align 8
  %20 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %21 = icmp ne %struct.hfs_bnode* %20, null
  br i1 %21, label %22, label %47

22:                                               ; preds = %2
  %23 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %24 = call i32 @hfs_bnode_get(%struct.hfs_bnode* %23)
  %25 = load %struct.hfs_btree*, %struct.hfs_btree** %4, align 8
  %26 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %25, i32 0, i32 2
  %27 = call i32 @spin_unlock(i32* %26)
  %28 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %29 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @HFS_BNODE_NEW, align 4
  %32 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %33 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %32, i32 0, i32 4
  %34 = call i64 @test_bit(i32 %31, i32* %33)
  %35 = icmp ne i64 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @wait_event(i32 %30, i32 %37)
  %39 = load i32, i32* @HFS_BNODE_ERROR, align 4
  %40 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %41 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %40, i32 0, i32 4
  %42 = call i64 @test_bit(i32 %39, i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %22
  br label %234

45:                                               ; preds = %22
  %46 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  store %struct.hfs_bnode* %46, %struct.hfs_bnode** %3, align 8
  br label %251

47:                                               ; preds = %2
  %48 = load %struct.hfs_btree*, %struct.hfs_btree** %4, align 8
  %49 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %48, i32 0, i32 2
  %50 = call i32 @spin_unlock(i32* %49)
  %51 = load %struct.hfs_btree*, %struct.hfs_btree** %4, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call %struct.hfs_bnode* @__hfs_bnode_create(%struct.hfs_btree* %51, i32 %52)
  store %struct.hfs_bnode* %53, %struct.hfs_bnode** %6, align 8
  %54 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %55 = icmp ne %struct.hfs_bnode* %54, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %47
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  %59 = call %struct.hfs_bnode* @ERR_PTR(i32 %58)
  store %struct.hfs_bnode* %59, %struct.hfs_bnode** %3, align 8
  br label %251

60:                                               ; preds = %47
  %61 = load i32, i32* @HFS_BNODE_ERROR, align 4
  %62 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %63 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %62, i32 0, i32 4
  %64 = call i64 @test_bit(i32 %61, i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  br label %234

67:                                               ; preds = %60
  %68 = load i32, i32* @HFS_BNODE_NEW, align 4
  %69 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %70 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %69, i32 0, i32 4
  %71 = call i64 @test_bit(i32 %68, i32* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %67
  %74 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  store %struct.hfs_bnode* %74, %struct.hfs_bnode** %3, align 8
  br label %251

75:                                               ; preds = %67
  %76 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %77 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %76, i32 0, i32 5
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @kmap(i32 %80)
  %82 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %83 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %82, i32 0, i32 8
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %81, %84
  %86 = inttoptr i64 %85 to %struct.hfs_bnode_desc*
  store %struct.hfs_bnode_desc* %86, %struct.hfs_bnode_desc** %7, align 8
  %87 = load %struct.hfs_bnode_desc*, %struct.hfs_bnode_desc** %7, align 8
  %88 = getelementptr inbounds %struct.hfs_bnode_desc, %struct.hfs_bnode_desc* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = call i8* @be32_to_cpu(i32 %89)
  %91 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %92 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %91, i32 0, i32 7
  store i8* %90, i8** %92, align 8
  %93 = load %struct.hfs_bnode_desc*, %struct.hfs_bnode_desc** %7, align 8
  %94 = getelementptr inbounds %struct.hfs_bnode_desc, %struct.hfs_bnode_desc* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = call i8* @be32_to_cpu(i32 %95)
  %97 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %98 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %97, i32 0, i32 6
  store i8* %96, i8** %98, align 8
  %99 = load %struct.hfs_bnode_desc*, %struct.hfs_bnode_desc** %7, align 8
  %100 = getelementptr inbounds %struct.hfs_bnode_desc, %struct.hfs_bnode_desc* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @be16_to_cpu(i32 %101)
  %103 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %104 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  %105 = load %struct.hfs_bnode_desc*, %struct.hfs_bnode_desc** %7, align 8
  %106 = getelementptr inbounds %struct.hfs_bnode_desc, %struct.hfs_bnode_desc* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %109 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  %110 = load %struct.hfs_bnode_desc*, %struct.hfs_bnode_desc** %7, align 8
  %111 = getelementptr inbounds %struct.hfs_bnode_desc, %struct.hfs_bnode_desc* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %114 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %113, i32 0, i32 2
  store i32 %112, i32* %114, align 8
  %115 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %116 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %115, i32 0, i32 5
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @kunmap(i32 %119)
  %121 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %122 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  switch i32 %123, label %153 [
    i32 131, label %124
    i32 128, label %124
    i32 129, label %131
    i32 130, label %138
  ]

124:                                              ; preds = %75, %75
  %125 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %126 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %124
  br label %234

130:                                              ; preds = %124
  br label %154

131:                                              ; preds = %75
  %132 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %133 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = icmp ne i32 %134, 1
  br i1 %135, label %136, label %137

136:                                              ; preds = %131
  br label %234

137:                                              ; preds = %131
  br label %154

138:                                              ; preds = %75
  %139 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %140 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = icmp sle i32 %141, 1
  br i1 %142, label %151, label %143

143:                                              ; preds = %138
  %144 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %145 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.hfs_btree*, %struct.hfs_btree** %4, align 8
  %148 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = icmp sgt i32 %146, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %143, %138
  br label %234

152:                                              ; preds = %143
  br label %154

153:                                              ; preds = %75
  br label %234

154:                                              ; preds = %152, %137, %130
  %155 = load %struct.hfs_btree*, %struct.hfs_btree** %4, align 8
  %156 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = sub nsw i32 %157, 2
  store i32 %158, i32* %9, align 4
  %159 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %160 = load i32, i32* %9, align 4
  %161 = call i32 @hfs_bnode_read_u16(%struct.hfs_bnode* %159, i32 %160)
  store i32 %161, i32* %10, align 4
  %162 = load i32, i32* %10, align 4
  %163 = sext i32 %162 to i64
  %164 = icmp ne i64 %163, 20
  br i1 %164, label %165, label %166

165:                                              ; preds = %154
  br label %234

166:                                              ; preds = %154
  store i32 1, i32* %8, align 4
  br label %167

167:                                              ; preds = %221, %166
  %168 = load i32, i32* %8, align 4
  %169 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %170 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = icmp sle i32 %168, %171
  br i1 %172, label %173, label %225

173:                                              ; preds = %167
  %174 = load i32, i32* %9, align 4
  %175 = sub nsw i32 %174, 2
  store i32 %175, i32* %9, align 4
  %176 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %177 = load i32, i32* %9, align 4
  %178 = call i32 @hfs_bnode_read_u16(%struct.hfs_bnode* %176, i32 %177)
  store i32 %178, i32* %11, align 4
  %179 = load i32, i32* %11, align 4
  %180 = load i32, i32* %10, align 4
  %181 = icmp sle i32 %179, %180
  br i1 %181, label %192, label %182

182:                                              ; preds = %173
  %183 = load i32, i32* %11, align 4
  %184 = load %struct.hfs_btree*, %struct.hfs_btree** %4, align 8
  %185 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = icmp sgt i32 %183, %186
  br i1 %187, label %192, label %188

188:                                              ; preds = %182
  %189 = load i32, i32* %11, align 4
  %190 = and i32 %189, 1
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %188, %182, %173
  br label %234

193:                                              ; preds = %188
  %194 = load i32, i32* %11, align 4
  %195 = load i32, i32* %10, align 4
  %196 = sub nsw i32 %194, %195
  store i32 %196, i32* %12, align 4
  %197 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %198 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = icmp ne i32 %199, 130
  br i1 %200, label %201, label %207

201:                                              ; preds = %193
  %202 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %203 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = icmp ne i32 %204, 129
  br i1 %205, label %206, label %207

206:                                              ; preds = %201
  br label %221

207:                                              ; preds = %201, %193
  %208 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %209 = load i32, i32* %10, align 4
  %210 = call i32 @hfs_bnode_read_u16(%struct.hfs_bnode* %208, i32 %209)
  %211 = add nsw i32 %210, 2
  store i32 %211, i32* %13, align 4
  %212 = load i32, i32* %13, align 4
  %213 = load i32, i32* %12, align 4
  %214 = icmp sge i32 %212, %213
  br i1 %214, label %219, label %215

215:                                              ; preds = %207
  %216 = load i32, i32* %13, align 4
  %217 = and i32 %216, 1
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %215, %207
  br label %234

220:                                              ; preds = %215
  br label %221

221:                                              ; preds = %220, %206
  %222 = load i32, i32* %11, align 4
  store i32 %222, i32* %10, align 4
  %223 = load i32, i32* %8, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %8, align 4
  br label %167

225:                                              ; preds = %167
  %226 = load i32, i32* @HFS_BNODE_NEW, align 4
  %227 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %228 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %227, i32 0, i32 4
  %229 = call i32 @clear_bit(i32 %226, i32* %228)
  %230 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %231 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %230, i32 0, i32 3
  %232 = call i32 @wake_up(i32* %231)
  %233 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  store %struct.hfs_bnode* %233, %struct.hfs_bnode** %3, align 8
  br label %251

234:                                              ; preds = %219, %192, %165, %153, %151, %136, %129, %66, %44
  %235 = load i32, i32* @HFS_BNODE_ERROR, align 4
  %236 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %237 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %236, i32 0, i32 4
  %238 = call i32 @set_bit(i32 %235, i32* %237)
  %239 = load i32, i32* @HFS_BNODE_NEW, align 4
  %240 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %241 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %240, i32 0, i32 4
  %242 = call i32 @clear_bit(i32 %239, i32* %241)
  %243 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %244 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %243, i32 0, i32 3
  %245 = call i32 @wake_up(i32* %244)
  %246 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %247 = call i32 @hfs_bnode_put(%struct.hfs_bnode* %246)
  %248 = load i32, i32* @EIO, align 4
  %249 = sub nsw i32 0, %248
  %250 = call %struct.hfs_bnode* @ERR_PTR(i32 %249)
  store %struct.hfs_bnode* %250, %struct.hfs_bnode** %3, align 8
  br label %251

251:                                              ; preds = %234, %225, %73, %56, %45
  %252 = load %struct.hfs_bnode*, %struct.hfs_bnode** %3, align 8
  ret %struct.hfs_bnode* %252
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.hfs_bnode* @hfs_bnode_findhash(%struct.hfs_btree*, i32) #1

declare dso_local i32 @hfs_bnode_get(%struct.hfs_bnode*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local %struct.hfs_bnode* @__hfs_bnode_create(%struct.hfs_btree*, i32) #1

declare dso_local %struct.hfs_bnode* @ERR_PTR(i32) #1

declare dso_local i64 @kmap(i32) #1

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @kunmap(i32) #1

declare dso_local i32 @hfs_bnode_read_u16(%struct.hfs_bnode*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @hfs_bnode_put(%struct.hfs_bnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
