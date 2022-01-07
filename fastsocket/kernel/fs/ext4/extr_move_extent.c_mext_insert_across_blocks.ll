; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_move_extent.c_mext_insert_across_blocks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_move_extent.c_mext_insert_across_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_extent = type { i64, i64 }
%struct.ext4_ext_path = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"ext4 move extent: Unexpected insert case\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, %struct.ext4_extent*, %struct.ext4_extent*, %struct.ext4_extent*, %struct.ext4_extent*, %struct.ext4_extent*)* @mext_insert_across_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mext_insert_across_blocks(i32* %0, %struct.inode* %1, %struct.ext4_extent* %2, %struct.ext4_extent* %3, %struct.ext4_extent* %4, %struct.ext4_extent* %5, %struct.ext4_extent* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.ext4_extent*, align 8
  %12 = alloca %struct.ext4_extent*, align 8
  %13 = alloca %struct.ext4_extent*, align 8
  %14 = alloca %struct.ext4_extent*, align 8
  %15 = alloca %struct.ext4_extent*, align 8
  %16 = alloca %struct.ext4_ext_path*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store %struct.inode* %1, %struct.inode** %10, align 8
  store %struct.ext4_extent* %2, %struct.ext4_extent** %11, align 8
  store %struct.ext4_extent* %3, %struct.ext4_extent** %12, align 8
  store %struct.ext4_extent* %4, %struct.ext4_extent** %13, align 8
  store %struct.ext4_extent* %5, %struct.ext4_extent** %14, align 8
  store %struct.ext4_extent* %6, %struct.ext4_extent** %15, align 8
  store %struct.ext4_ext_path* null, %struct.ext4_ext_path** %16, align 8
  store i64 0, i64* %17, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %21 = load %struct.ext4_extent*, %struct.ext4_extent** %13, align 8
  %22 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %61

25:                                               ; preds = %7
  %26 = load %struct.ext4_extent*, %struct.ext4_extent** %14, align 8
  %27 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %61

30:                                               ; preds = %25
  %31 = load %struct.ext4_extent*, %struct.ext4_extent** %15, align 8
  %32 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %61

35:                                               ; preds = %30
  %36 = load %struct.ext4_extent*, %struct.ext4_extent** %11, align 8
  %37 = load %struct.ext4_extent*, %struct.ext4_extent** %12, align 8
  %38 = icmp eq %struct.ext4_extent* %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 1, i32* %19, align 4
  br label %55

40:                                               ; preds = %35
  %41 = load %struct.ext4_extent*, %struct.ext4_extent** %15, align 8
  %42 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.ext4_extent*, %struct.ext4_extent** %12, align 8
  %45 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load %struct.ext4_extent*, %struct.ext4_extent** %15, align 8
  %47 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.ext4_extent*, %struct.ext4_extent** %12, align 8
  %50 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  %51 = load %struct.ext4_extent*, %struct.ext4_extent** %12, align 8
  %52 = load %struct.ext4_extent*, %struct.ext4_extent** %15, align 8
  %53 = call i32 @ext4_ext_pblock(%struct.ext4_extent* %52)
  %54 = call i32 @ext4_ext_store_pblock(%struct.ext4_extent* %51, i32 %53)
  br label %55

55:                                               ; preds = %40, %39
  %56 = load %struct.ext4_extent*, %struct.ext4_extent** %13, align 8
  %57 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.ext4_extent*, %struct.ext4_extent** %11, align 8
  %60 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  store i32 1, i32* %18, align 4
  br label %136

61:                                               ; preds = %30, %25, %7
  %62 = load %struct.ext4_extent*, %struct.ext4_extent** %13, align 8
  %63 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %86

66:                                               ; preds = %61
  %67 = load %struct.ext4_extent*, %struct.ext4_extent** %14, align 8
  %68 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %86

71:                                               ; preds = %66
  %72 = load %struct.ext4_extent*, %struct.ext4_extent** %15, align 8
  %73 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %86, label %76

76:                                               ; preds = %71
  %77 = load %struct.ext4_extent*, %struct.ext4_extent** %11, align 8
  %78 = load %struct.ext4_extent*, %struct.ext4_extent** %12, align 8
  %79 = icmp eq %struct.ext4_extent* %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %76
  %81 = load %struct.ext4_extent*, %struct.ext4_extent** %13, align 8
  %82 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.ext4_extent*, %struct.ext4_extent** %11, align 8
  %85 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %84, i32 0, i32 1
  store i64 %83, i64* %85, align 8
  store i32 1, i32* %18, align 4
  br label %135

86:                                               ; preds = %76, %71, %66, %61
  %87 = load %struct.ext4_extent*, %struct.ext4_extent** %13, align 8
  %88 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %130, label %91

91:                                               ; preds = %86
  %92 = load %struct.ext4_extent*, %struct.ext4_extent** %14, align 8
  %93 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %130

96:                                               ; preds = %91
  %97 = load %struct.ext4_extent*, %struct.ext4_extent** %15, align 8
  %98 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %130

101:                                              ; preds = %96
  %102 = load %struct.ext4_extent*, %struct.ext4_extent** %11, align 8
  %103 = load %struct.ext4_extent*, %struct.ext4_extent** %12, align 8
  %104 = icmp eq %struct.ext4_extent* %102, %103
  br i1 %104, label %105, label %130

105:                                              ; preds = %101
  %106 = load %struct.ext4_extent*, %struct.ext4_extent** %15, align 8
  %107 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.ext4_extent*, %struct.ext4_extent** %12, align 8
  %110 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %109, i32 0, i32 0
  store i64 %108, i64* %110, align 8
  %111 = load %struct.ext4_extent*, %struct.ext4_extent** %15, align 8
  %112 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.ext4_extent*, %struct.ext4_extent** %12, align 8
  %115 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %114, i32 0, i32 1
  store i64 %113, i64* %115, align 8
  %116 = load %struct.ext4_extent*, %struct.ext4_extent** %12, align 8
  %117 = load %struct.ext4_extent*, %struct.ext4_extent** %15, align 8
  %118 = call i32 @ext4_ext_pblock(%struct.ext4_extent* %117)
  %119 = call i32 @ext4_ext_store_pblock(%struct.ext4_extent* %116, i32 %118)
  %120 = load %struct.ext4_extent*, %struct.ext4_extent** %14, align 8
  %121 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %105
  %125 = load %struct.ext4_extent*, %struct.ext4_extent** %14, align 8
  %126 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = call i64 @le32_to_cpu(i64 %127)
  store i64 %128, i64* %17, align 8
  br label %129

129:                                              ; preds = %124, %105
  store i32 1, i32* %18, align 4
  br label %134

130:                                              ; preds = %101, %96, %91, %86
  %131 = call i32 @ext4_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %132 = load i32, i32* @EIO, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %8, align 4
  br label %189

134:                                              ; preds = %129
  br label %135

135:                                              ; preds = %134, %80
  br label %136

136:                                              ; preds = %135, %55
  %137 = load i32, i32* %18, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %155

139:                                              ; preds = %136
  %140 = load %struct.inode*, %struct.inode** %10, align 8
  %141 = load i64, i64* %17, align 8
  %142 = call i32 @get_ext_path(%struct.inode* %140, i64 %141, %struct.ext4_ext_path** %16)
  store i32 %142, i32* %20, align 4
  %143 = load i32, i32* %20, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %139
  br label %179

146:                                              ; preds = %139
  %147 = load i32*, i32** %9, align 8
  %148 = load %struct.inode*, %struct.inode** %10, align 8
  %149 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %16, align 8
  %150 = load %struct.ext4_extent*, %struct.ext4_extent** %14, align 8
  %151 = call i64 @ext4_ext_insert_extent(i32* %147, %struct.inode* %148, %struct.ext4_ext_path* %149, %struct.ext4_extent* %150, i32 0)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %146
  br label %179

154:                                              ; preds = %146
  br label %155

155:                                              ; preds = %154, %136
  %156 = load i32, i32* %19, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %178

158:                                              ; preds = %155
  %159 = load %struct.inode*, %struct.inode** %10, align 8
  %160 = load %struct.ext4_extent*, %struct.ext4_extent** %15, align 8
  %161 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = call i64 @le32_to_cpu(i64 %162)
  %164 = sub nsw i64 %163, 1
  %165 = call i32 @get_ext_path(%struct.inode* %159, i64 %164, %struct.ext4_ext_path** %16)
  store i32 %165, i32* %20, align 4
  %166 = load i32, i32* %20, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %158
  br label %179

169:                                              ; preds = %158
  %170 = load i32*, i32** %9, align 8
  %171 = load %struct.inode*, %struct.inode** %10, align 8
  %172 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %16, align 8
  %173 = load %struct.ext4_extent*, %struct.ext4_extent** %15, align 8
  %174 = call i64 @ext4_ext_insert_extent(i32* %170, %struct.inode* %171, %struct.ext4_ext_path* %172, %struct.ext4_extent* %173, i32 0)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %169
  br label %179

177:                                              ; preds = %169
  br label %178

178:                                              ; preds = %177, %155
  br label %179

179:                                              ; preds = %178, %176, %168, %153, %145
  %180 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %16, align 8
  %181 = icmp ne %struct.ext4_ext_path* %180, null
  br i1 %181, label %182, label %187

182:                                              ; preds = %179
  %183 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %16, align 8
  %184 = call i32 @ext4_ext_drop_refs(%struct.ext4_ext_path* %183)
  %185 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %16, align 8
  %186 = call i32 @kfree(%struct.ext4_ext_path* %185)
  br label %187

187:                                              ; preds = %182, %179
  %188 = load i32, i32* %20, align 4
  store i32 %188, i32* %8, align 4
  br label %189

189:                                              ; preds = %187, %130
  %190 = load i32, i32* %8, align 4
  ret i32 %190
}

declare dso_local i32 @ext4_ext_store_pblock(%struct.ext4_extent*, i32) #1

declare dso_local i32 @ext4_ext_pblock(%struct.ext4_extent*) #1

declare dso_local i64 @le32_to_cpu(i64) #1

declare dso_local i32 @ext4_debug(i8*) #1

declare dso_local i32 @get_ext_path(%struct.inode*, i64, %struct.ext4_ext_path**) #1

declare dso_local i64 @ext4_ext_insert_extent(i32*, %struct.inode*, %struct.ext4_ext_path*, %struct.ext4_extent*, i32) #1

declare dso_local i32 @ext4_ext_drop_refs(%struct.ext4_ext_path*) #1

declare dso_local i32 @kfree(%struct.ext4_ext_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
