; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_radix-tree.c_radix_tree_range_tag_if_tagged.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_radix-tree.c_radix_tree_range_tag_if_tagged.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radix_tree_root = type { i32, i32 }
%struct.radix_tree_path = type { i32, %struct.radix_tree_node* }
%struct.radix_tree_node = type { %struct.radix_tree_node** }

@RADIX_TREE_MAP_SHIFT = common dso_local global i32 0, align 4
@RADIX_TREE_MAP_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @radix_tree_range_tag_if_tagged(%struct.radix_tree_root* %0, i64* %1, i64 %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.radix_tree_root*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.radix_tree_path*, align 8
  %18 = alloca %struct.radix_tree_node*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.radix_tree_root* %0, %struct.radix_tree_root** %8, align 8
  store i64* %1, i64** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %24 = load %struct.radix_tree_root*, %struct.radix_tree_root** %8, align 8
  %25 = getelementptr inbounds %struct.radix_tree_root, %struct.radix_tree_root* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %14, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %15, align 8
  %30 = alloca %struct.radix_tree_path, i64 %28, align 16
  store i64 %28, i64* %16, align 8
  store %struct.radix_tree_path* %30, %struct.radix_tree_path** %17, align 8
  store i64 0, i64* %20, align 8
  %31 = load i64*, i64** %9, align 8
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %21, align 8
  %33 = load i64, i64* %10, align 8
  %34 = load i32, i32* %14, align 4
  %35 = call i32 @radix_tree_maxindex(i32 %34)
  %36 = call i64 @min(i64 %33, i32 %35)
  store i64 %36, i64* %10, align 8
  %37 = load i64, i64* %21, align 8
  %38 = load i64, i64* %10, align 8
  %39 = icmp ugt i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %6
  store i64 0, i64* %7, align 8
  store i32 1, i32* %22, align 4
  br label %220

41:                                               ; preds = %6
  %42 = load i64, i64* %11, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  store i64 0, i64* %7, align 8
  store i32 1, i32* %22, align 4
  br label %220

45:                                               ; preds = %41
  %46 = load %struct.radix_tree_root*, %struct.radix_tree_root** %8, align 8
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @root_tag_get(%struct.radix_tree_root* %46, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %45
  %51 = load i64, i64* %10, align 8
  %52 = add i64 %51, 1
  %53 = load i64*, i64** %9, align 8
  store i64 %52, i64* %53, align 8
  store i64 0, i64* %7, align 8
  store i32 1, i32* %22, align 4
  br label %220

54:                                               ; preds = %45
  %55 = load i32, i32* %14, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %54
  %58 = load i64, i64* %10, align 8
  %59 = add i64 %58, 1
  %60 = load i64*, i64** %9, align 8
  store i64 %59, i64* %60, align 8
  %61 = load %struct.radix_tree_root*, %struct.radix_tree_root** %8, align 8
  %62 = load i32, i32* %13, align 4
  %63 = call i32 @root_tag_set(%struct.radix_tree_root* %61, i32 %62)
  store i64 1, i64* %7, align 8
  store i32 1, i32* %22, align 4
  br label %220

64:                                               ; preds = %54
  %65 = load i32, i32* %14, align 4
  %66 = sub i32 %65, 1
  %67 = load i32, i32* @RADIX_TREE_MAP_SHIFT, align 4
  %68 = mul i32 %66, %67
  store i32 %68, i32* %19, align 4
  %69 = load %struct.radix_tree_root*, %struct.radix_tree_root** %8, align 8
  %70 = getelementptr inbounds %struct.radix_tree_root, %struct.radix_tree_root* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call %struct.radix_tree_node* @indirect_to_ptr(i32 %71)
  store %struct.radix_tree_node* %72, %struct.radix_tree_node** %18, align 8
  %73 = load i32, i32* %14, align 4
  %74 = sub i32 %73, 1
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.radix_tree_path, %struct.radix_tree_path* %30, i64 %75
  %77 = getelementptr inbounds %struct.radix_tree_path, %struct.radix_tree_path* %76, i32 0, i32 1
  store %struct.radix_tree_node* null, %struct.radix_tree_node** %77, align 8
  br label %78

78:                                               ; preds = %208, %105, %64
  %79 = load i64, i64* %21, align 8
  %80 = load i32, i32* %19, align 4
  %81 = zext i32 %80 to i64
  %82 = lshr i64 %79, %81
  %83 = load i64, i64* @RADIX_TREE_MAP_MASK, align 8
  %84 = and i64 %82, %83
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %23, align 4
  %86 = load %struct.radix_tree_node*, %struct.radix_tree_node** %18, align 8
  %87 = getelementptr inbounds %struct.radix_tree_node, %struct.radix_tree_node* %86, i32 0, i32 0
  %88 = load %struct.radix_tree_node**, %struct.radix_tree_node*** %87, align 8
  %89 = load i32, i32* %23, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.radix_tree_node*, %struct.radix_tree_node** %88, i64 %90
  %92 = load %struct.radix_tree_node*, %struct.radix_tree_node** %91, align 8
  %93 = icmp ne %struct.radix_tree_node* %92, null
  br i1 %93, label %95, label %94

94:                                               ; preds = %78
  br label %166

95:                                               ; preds = %78
  %96 = load %struct.radix_tree_node*, %struct.radix_tree_node** %18, align 8
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* %23, align 4
  %99 = call i64 @tag_get(%struct.radix_tree_node* %96, i32 %97, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %95
  br label %166

102:                                              ; preds = %95
  %103 = load i32, i32* %14, align 4
  %104 = icmp ugt i32 %103, 1
  br i1 %104, label %105, label %130

105:                                              ; preds = %102
  %106 = load i32, i32* %14, align 4
  %107 = add i32 %106, -1
  store i32 %107, i32* %14, align 4
  %108 = load i32, i32* @RADIX_TREE_MAP_SHIFT, align 4
  %109 = load i32, i32* %19, align 4
  %110 = sub i32 %109, %108
  store i32 %110, i32* %19, align 4
  %111 = load %struct.radix_tree_node*, %struct.radix_tree_node** %18, align 8
  %112 = load i32, i32* %14, align 4
  %113 = sub i32 %112, 1
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds %struct.radix_tree_path, %struct.radix_tree_path* %30, i64 %114
  %116 = getelementptr inbounds %struct.radix_tree_path, %struct.radix_tree_path* %115, i32 0, i32 1
  store %struct.radix_tree_node* %111, %struct.radix_tree_node** %116, align 8
  %117 = load i32, i32* %23, align 4
  %118 = load i32, i32* %14, align 4
  %119 = sub i32 %118, 1
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds %struct.radix_tree_path, %struct.radix_tree_path* %30, i64 %120
  %122 = getelementptr inbounds %struct.radix_tree_path, %struct.radix_tree_path* %121, i32 0, i32 0
  store i32 %117, i32* %122, align 16
  %123 = load %struct.radix_tree_node*, %struct.radix_tree_node** %18, align 8
  %124 = getelementptr inbounds %struct.radix_tree_node, %struct.radix_tree_node* %123, i32 0, i32 0
  %125 = load %struct.radix_tree_node**, %struct.radix_tree_node*** %124, align 8
  %126 = load i32, i32* %23, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.radix_tree_node*, %struct.radix_tree_node** %125, i64 %127
  %129 = load %struct.radix_tree_node*, %struct.radix_tree_node** %128, align 8
  store %struct.radix_tree_node* %129, %struct.radix_tree_node** %18, align 8
  br label %78

130:                                              ; preds = %102
  %131 = load i64, i64* %20, align 8
  %132 = add i64 %131, 1
  store i64 %132, i64* %20, align 8
  %133 = load %struct.radix_tree_node*, %struct.radix_tree_node** %18, align 8
  %134 = load i32, i32* %13, align 4
  %135 = load i32, i32* %23, align 4
  %136 = call i32 @tag_set(%struct.radix_tree_node* %133, i32 %134, i32 %135)
  %137 = getelementptr inbounds %struct.radix_tree_path, %struct.radix_tree_path* %30, i64 0
  store %struct.radix_tree_path* %137, %struct.radix_tree_path** %17, align 8
  br label %138

138:                                              ; preds = %154, %130
  %139 = load %struct.radix_tree_path*, %struct.radix_tree_path** %17, align 8
  %140 = getelementptr inbounds %struct.radix_tree_path, %struct.radix_tree_path* %139, i32 0, i32 1
  %141 = load %struct.radix_tree_node*, %struct.radix_tree_node** %140, align 8
  %142 = icmp ne %struct.radix_tree_node* %141, null
  br i1 %142, label %143, label %165

143:                                              ; preds = %138
  %144 = load %struct.radix_tree_path*, %struct.radix_tree_path** %17, align 8
  %145 = getelementptr inbounds %struct.radix_tree_path, %struct.radix_tree_path* %144, i32 0, i32 1
  %146 = load %struct.radix_tree_node*, %struct.radix_tree_node** %145, align 8
  %147 = load i32, i32* %13, align 4
  %148 = load %struct.radix_tree_path*, %struct.radix_tree_path** %17, align 8
  %149 = getelementptr inbounds %struct.radix_tree_path, %struct.radix_tree_path* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = call i64 @tag_get(%struct.radix_tree_node* %146, i32 %147, i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %143
  br label %165

154:                                              ; preds = %143
  %155 = load %struct.radix_tree_path*, %struct.radix_tree_path** %17, align 8
  %156 = getelementptr inbounds %struct.radix_tree_path, %struct.radix_tree_path* %155, i32 0, i32 1
  %157 = load %struct.radix_tree_node*, %struct.radix_tree_node** %156, align 8
  %158 = load i32, i32* %13, align 4
  %159 = load %struct.radix_tree_path*, %struct.radix_tree_path** %17, align 8
  %160 = getelementptr inbounds %struct.radix_tree_path, %struct.radix_tree_path* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @tag_set(%struct.radix_tree_node* %157, i32 %158, i32 %161)
  %163 = load %struct.radix_tree_path*, %struct.radix_tree_path** %17, align 8
  %164 = getelementptr inbounds %struct.radix_tree_path, %struct.radix_tree_path* %163, i32 1
  store %struct.radix_tree_path* %164, %struct.radix_tree_path** %17, align 8
  br label %138

165:                                              ; preds = %153, %138
  br label %166

166:                                              ; preds = %165, %101, %94
  %167 = load i64, i64* %21, align 8
  %168 = load i32, i32* %19, align 4
  %169 = zext i32 %168 to i64
  %170 = lshr i64 %167, %169
  %171 = add i64 %170, 1
  %172 = load i32, i32* %19, align 4
  %173 = zext i32 %172 to i64
  %174 = shl i64 %171, %173
  store i64 %174, i64* %21, align 8
  %175 = load i64, i64* %21, align 8
  %176 = load i64, i64* %10, align 8
  %177 = icmp ugt i64 %175, %176
  br i1 %177, label %181, label %178

178:                                              ; preds = %166
  %179 = load i64, i64* %21, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %182, label %181

181:                                              ; preds = %178, %166
  br label %209

182:                                              ; preds = %178
  %183 = load i64, i64* %20, align 8
  %184 = load i64, i64* %11, align 8
  %185 = icmp uge i64 %183, %184
  br i1 %185, label %186, label %187

186:                                              ; preds = %182
  br label %209

187:                                              ; preds = %182
  br label %188

188:                                              ; preds = %196, %187
  %189 = load i64, i64* %21, align 8
  %190 = load i32, i32* %19, align 4
  %191 = zext i32 %190 to i64
  %192 = lshr i64 %189, %191
  %193 = load i64, i64* @RADIX_TREE_MAP_MASK, align 8
  %194 = and i64 %192, %193
  %195 = icmp eq i64 %194, 0
  br i1 %195, label %196, label %208

196:                                              ; preds = %188
  %197 = load i32, i32* %14, align 4
  %198 = sub i32 %197, 1
  %199 = zext i32 %198 to i64
  %200 = getelementptr inbounds %struct.radix_tree_path, %struct.radix_tree_path* %30, i64 %199
  %201 = getelementptr inbounds %struct.radix_tree_path, %struct.radix_tree_path* %200, i32 0, i32 1
  %202 = load %struct.radix_tree_node*, %struct.radix_tree_node** %201, align 8
  store %struct.radix_tree_node* %202, %struct.radix_tree_node** %18, align 8
  %203 = load i32, i32* %14, align 4
  %204 = add i32 %203, 1
  store i32 %204, i32* %14, align 4
  %205 = load i32, i32* @RADIX_TREE_MAP_SHIFT, align 4
  %206 = load i32, i32* %19, align 4
  %207 = add i32 %206, %205
  store i32 %207, i32* %19, align 4
  br label %188

208:                                              ; preds = %188
  br label %78

209:                                              ; preds = %186, %181
  %210 = load i64, i64* %20, align 8
  %211 = icmp ugt i64 %210, 0
  br i1 %211, label %212, label %216

212:                                              ; preds = %209
  %213 = load %struct.radix_tree_root*, %struct.radix_tree_root** %8, align 8
  %214 = load i32, i32* %13, align 4
  %215 = call i32 @root_tag_set(%struct.radix_tree_root* %213, i32 %214)
  br label %216

216:                                              ; preds = %212, %209
  %217 = load i64, i64* %21, align 8
  %218 = load i64*, i64** %9, align 8
  store i64 %217, i64* %218, align 8
  %219 = load i64, i64* %20, align 8
  store i64 %219, i64* %7, align 8
  store i32 1, i32* %22, align 4
  br label %220

220:                                              ; preds = %216, %57, %50, %44, %40
  %221 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %221)
  %222 = load i64, i64* %7, align 8
  ret i64 %222
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @min(i64, i32) #2

declare dso_local i32 @radix_tree_maxindex(i32) #2

declare dso_local i32 @root_tag_get(%struct.radix_tree_root*, i32) #2

declare dso_local i32 @root_tag_set(%struct.radix_tree_root*, i32) #2

declare dso_local %struct.radix_tree_node* @indirect_to_ptr(i32) #2

declare dso_local i64 @tag_get(%struct.radix_tree_node*, i32, i32) #2

declare dso_local i32 @tag_set(%struct.radix_tree_node*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
