; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_dnode.c_hpfs_count_dnodes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_dnode.c_hpfs_count_dnodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.dnode = type { i32, i64 }
%struct.quad_buffer_head = type { i32 }
%struct.hpfs_dirent = type { i64, i32, i64, i64 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [21 x i8] c"hpfs_count_dnodes #1\00", align 1
@.str.1 = private unnamed_addr constant [72 x i8] c"hpfs_count_dnodes: bad up pointer; dnode %08x, down %08x points to %08x\00", align 1
@.str.2 = private unnamed_addr constant [85 x i8] c"hpfs_count_dnodes: pointer to dnode %08x not found in dnode %08x, got here from %08x\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"hpfs_count_dnodes #2\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hpfs_count_dnodes(%struct.super_block* %0, i32 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.dnode*, align 8
  %12 = alloca %struct.quad_buffer_head, align 4
  %13 = alloca %struct.hpfs_dirent*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %19, align 4
  br label %20

20:                                               ; preds = %113, %5
  %21 = load i32*, i32** %8, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i32*, i32** %8, align 8
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 4
  br label %27

27:                                               ; preds = %23, %20
  %28 = load %struct.super_block*, %struct.super_block** %6, align 8
  %29 = call %struct.TYPE_2__* @hpfs_sb(%struct.super_block* %28)
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load %struct.super_block*, %struct.super_block** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i64 @hpfs_stop_cycles(%struct.super_block* %34, i32 %35, i32* %16, i32* %17, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %191

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %39, %27
  store i32 0, i32* %14, align 4
  br label %41

41:                                               ; preds = %190, %40
  %42 = load %struct.super_block*, %struct.super_block** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call %struct.dnode* @hpfs_map_dnode(%struct.super_block* %42, i32 %43, %struct.quad_buffer_head* %12)
  store %struct.dnode* %44, %struct.dnode** %11, align 8
  %45 = icmp ne %struct.dnode* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  br label %191

47:                                               ; preds = %41
  %48 = load %struct.super_block*, %struct.super_block** %6, align 8
  %49 = call %struct.TYPE_2__* @hpfs_sb(%struct.super_block* %48)
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %74

53:                                               ; preds = %47
  %54 = load i32, i32* %15, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %73

56:                                               ; preds = %53
  %57 = load i32, i32* %15, align 4
  %58 = icmp ne i32 %57, -1
  br i1 %58, label %59, label %73

59:                                               ; preds = %56
  %60 = load %struct.dnode*, %struct.dnode** %11, align 8
  %61 = getelementptr inbounds %struct.dnode, %struct.dnode* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %15, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %59
  %66 = load %struct.super_block*, %struct.super_block** %6, align 8
  %67 = load i32, i32* %15, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.dnode*, %struct.dnode** %11, align 8
  %70 = getelementptr inbounds %struct.dnode, %struct.dnode* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @hpfs_error(%struct.super_block* %66, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 %67, i32 %68, i32 %71)
  br label %73

73:                                               ; preds = %65, %59, %56, %53
  br label %74

74:                                               ; preds = %73, %47
  %75 = load %struct.dnode*, %struct.dnode** %11, align 8
  %76 = call %struct.hpfs_dirent* @dnode_first_de(%struct.dnode* %75)
  store %struct.hpfs_dirent* %76, %struct.hpfs_dirent** %13, align 8
  %77 = load i32, i32* %14, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %107

79:                                               ; preds = %74
  br label %80

80:                                               ; preds = %79, %104
  %81 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %82 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %80
  %86 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %87 = call i32 @de_down_pointer(%struct.hpfs_dirent* %86)
  %88 = load i32, i32* %14, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  br label %119

91:                                               ; preds = %85
  br label %92

92:                                               ; preds = %91, %80
  %93 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %94 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %92
  %98 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %12)
  %99 = load %struct.super_block*, %struct.super_block** %6, align 8
  %100 = load i32, i32* %14, align 4
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* %15, align 4
  %103 = call i32 @hpfs_error(%struct.super_block* %99, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.2, i64 0, i64 0), i32 %100, i32 %101, i32 %102)
  br label %191

104:                                              ; preds = %92
  %105 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %106 = call %struct.hpfs_dirent* @de_next_de(%struct.hpfs_dirent* %105)
  store %struct.hpfs_dirent* %106, %struct.hpfs_dirent** %13, align 8
  br label %80

107:                                              ; preds = %74
  br label %108

108:                                              ; preds = %164, %107
  %109 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %110 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %108
  %114 = load i32, i32* %7, align 4
  store i32 %114, i32* %15, align 4
  %115 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %116 = call i32 @de_down_pointer(%struct.hpfs_dirent* %115)
  store i32 %116, i32* %7, align 4
  %117 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %12)
  br label %20

118:                                              ; preds = %108
  br label %119

119:                                              ; preds = %118, %90
  %120 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %121 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %141, label %124

124:                                              ; preds = %119
  %125 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %126 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %141, label %129

129:                                              ; preds = %124
  %130 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %131 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %129
  %135 = load i32*, i32** %9, align 8
  %136 = icmp ne i32* %135, null
  br i1 %136, label %137, label %141

137:                                              ; preds = %134
  %138 = load i32*, i32** %9, align 8
  %139 = load i32, i32* %138, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %138, align 4
  br label %141

141:                                              ; preds = %137, %134, %129, %124, %119
  %142 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %143 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %158, label %146

146:                                              ; preds = %141
  %147 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %148 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %158, label %151

151:                                              ; preds = %146
  %152 = load i32*, i32** %10, align 8
  %153 = icmp ne i32* %152, null
  br i1 %153, label %154, label %158

154:                                              ; preds = %151
  %155 = load i32*, i32** %10, align 8
  %156 = load i32, i32* %155, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %155, align 4
  br label %158

158:                                              ; preds = %154, %151, %146, %141
  %159 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %160 = call %struct.hpfs_dirent* @de_next_de(%struct.hpfs_dirent* %159)
  store %struct.hpfs_dirent* %160, %struct.hpfs_dirent** %13, align 8
  %161 = load %struct.dnode*, %struct.dnode** %11, align 8
  %162 = call %struct.hpfs_dirent* @dnode_end_de(%struct.dnode* %161)
  %163 = icmp ult %struct.hpfs_dirent* %160, %162
  br i1 %163, label %164, label %165

164:                                              ; preds = %158
  br label %108

165:                                              ; preds = %158
  %166 = load i32, i32* %7, align 4
  store i32 %166, i32* %14, align 4
  %167 = load %struct.dnode*, %struct.dnode** %11, align 8
  %168 = getelementptr inbounds %struct.dnode, %struct.dnode* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  store i32 %169, i32* %7, align 4
  %170 = load %struct.dnode*, %struct.dnode** %11, align 8
  %171 = getelementptr inbounds %struct.dnode, %struct.dnode* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %165
  %175 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %12)
  br label %191

176:                                              ; preds = %165
  %177 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %12)
  %178 = load %struct.super_block*, %struct.super_block** %6, align 8
  %179 = call %struct.TYPE_2__* @hpfs_sb(%struct.super_block* %178)
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %190

183:                                              ; preds = %176
  %184 = load %struct.super_block*, %struct.super_block** %6, align 8
  %185 = load i32, i32* %14, align 4
  %186 = call i64 @hpfs_stop_cycles(%struct.super_block* %184, i32 %185, i32* %18, i32* %19, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %183
  br label %191

189:                                              ; preds = %183
  br label %190

190:                                              ; preds = %189, %176
  store i32 -1, i32* %15, align 4
  br label %41

191:                                              ; preds = %188, %174, %97, %46, %38
  ret void
}

declare dso_local %struct.TYPE_2__* @hpfs_sb(%struct.super_block*) #1

declare dso_local i64 @hpfs_stop_cycles(%struct.super_block*, i32, i32*, i32*, i8*) #1

declare dso_local %struct.dnode* @hpfs_map_dnode(%struct.super_block*, i32, %struct.quad_buffer_head*) #1

declare dso_local i32 @hpfs_error(%struct.super_block*, i8*, i32, i32, i32) #1

declare dso_local %struct.hpfs_dirent* @dnode_first_de(%struct.dnode*) #1

declare dso_local i32 @de_down_pointer(%struct.hpfs_dirent*) #1

declare dso_local i32 @hpfs_brelse4(%struct.quad_buffer_head*) #1

declare dso_local %struct.hpfs_dirent* @de_next_de(%struct.hpfs_dirent*) #1

declare dso_local %struct.hpfs_dirent* @dnode_end_de(%struct.dnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
