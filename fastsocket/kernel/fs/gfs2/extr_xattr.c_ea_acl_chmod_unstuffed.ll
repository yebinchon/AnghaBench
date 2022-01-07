; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_xattr.c_ea_acl_chmod_unstuffed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_xattr.c_ea_acl_chmod_unstuffed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { i32, i32 }
%struct.gfs2_ea_header = type { i32 }
%struct.gfs2_sbd = type { i32 }
%struct.buffer_head = type { i64 }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RES_DINODE = common dso_local global i64 0, align 8
@GFS2_METATYPE_ED = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_inode*, %struct.gfs2_ea_header*, i8*)* @ea_acl_chmod_unstuffed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ea_acl_chmod_unstuffed(%struct.gfs2_inode* %0, %struct.gfs2_ea_header* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gfs2_inode*, align 8
  %6 = alloca %struct.gfs2_ea_header*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.gfs2_sbd*, align 8
  %9 = alloca %struct.buffer_head**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %5, align 8
  store %struct.gfs2_ea_header* %1, %struct.gfs2_ea_header** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %16 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %15, i32 0, i32 1
  %17 = call %struct.gfs2_sbd* @GFS2_SB(i32* %16)
  store %struct.gfs2_sbd* %17, %struct.gfs2_sbd** %8, align 8
  %18 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %6, align 8
  %19 = call i32 @GFS2_EA_DATA_LEN(%struct.gfs2_ea_header* %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %22 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @DIV_ROUND_UP(i32 %20, i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %6, align 8
  %26 = call i32* @GFS2_EA2DATAPTRS(%struct.gfs2_ea_header* %25)
  store i32* %26, i32** %12, align 8
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @GFP_NOFS, align 4
  %29 = call %struct.buffer_head** @kcalloc(i32 %27, i32 8, i32 %28)
  store %struct.buffer_head** %29, %struct.buffer_head*** %9, align 8
  %30 = load %struct.buffer_head**, %struct.buffer_head*** %9, align 8
  %31 = icmp ne %struct.buffer_head** %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %3
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %206

35:                                               ; preds = %3
  %36 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %37 = load i32, i32* %11, align 4
  %38 = zext i32 %37 to i64
  %39 = load i64, i64* @RES_DINODE, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @gfs2_trans_begin(%struct.gfs2_sbd* %36, i64 %40, i32 0)
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %14, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  br label %196

45:                                               ; preds = %35
  store i32 0, i32* %13, align 4
  br label %46

46:                                               ; preds = %80, %45
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %50, label %83

50:                                               ; preds = %46
  %51 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %52 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %12, align 8
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @be64_to_cpu(i32 %55)
  %57 = load %struct.buffer_head**, %struct.buffer_head*** %9, align 8
  %58 = load i32, i32* %13, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %57, i64 %59
  %61 = call i32 @gfs2_meta_read(i32 %53, i32 %56, i32 0, %struct.buffer_head** %60)
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* %14, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %50
  br label %65

65:                                               ; preds = %69, %64
  %66 = load i32, i32* %13, align 4
  %67 = add i32 %66, -1
  store i32 %67, i32* %13, align 4
  %68 = icmp ne i32 %66, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %65
  %70 = load %struct.buffer_head**, %struct.buffer_head*** %9, align 8
  %71 = load i32, i32* %13, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %70, i64 %72
  %74 = load %struct.buffer_head*, %struct.buffer_head** %73, align 8
  %75 = call i32 @brelse(%struct.buffer_head* %74)
  br label %65

76:                                               ; preds = %65
  br label %200

77:                                               ; preds = %50
  %78 = load i32*, i32** %12, align 8
  %79 = getelementptr inbounds i32, i32* %78, i32 1
  store i32* %79, i32** %12, align 8
  br label %80

80:                                               ; preds = %77
  %81 = load i32, i32* %13, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %13, align 4
  br label %46

83:                                               ; preds = %46
  store i32 0, i32* %13, align 4
  br label %84

84:                                               ; preds = %192, %83
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* %11, align 4
  %87 = icmp ult i32 %85, %86
  br i1 %87, label %88, label %195

88:                                               ; preds = %84
  %89 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %90 = load %struct.buffer_head**, %struct.buffer_head*** %9, align 8
  %91 = load i32, i32* %13, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %90, i64 %92
  %94 = load %struct.buffer_head*, %struct.buffer_head** %93, align 8
  %95 = call i32 @gfs2_meta_wait(%struct.gfs2_sbd* %89, %struct.buffer_head* %94)
  store i32 %95, i32* %14, align 4
  %96 = load i32, i32* %14, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %114

98:                                               ; preds = %88
  br label %99

99:                                               ; preds = %110, %98
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* %11, align 4
  %102 = icmp ult i32 %100, %101
  br i1 %102, label %103, label %113

103:                                              ; preds = %99
  %104 = load %struct.buffer_head**, %struct.buffer_head*** %9, align 8
  %105 = load i32, i32* %13, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %104, i64 %106
  %108 = load %struct.buffer_head*, %struct.buffer_head** %107, align 8
  %109 = call i32 @brelse(%struct.buffer_head* %108)
  br label %110

110:                                              ; preds = %103
  %111 = load i32, i32* %13, align 4
  %112 = add i32 %111, 1
  store i32 %112, i32* %13, align 4
  br label %99

113:                                              ; preds = %99
  br label %200

114:                                              ; preds = %88
  %115 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %116 = load %struct.buffer_head**, %struct.buffer_head*** %9, align 8
  %117 = load i32, i32* %13, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %116, i64 %118
  %120 = load %struct.buffer_head*, %struct.buffer_head** %119, align 8
  %121 = load i32, i32* @GFS2_METATYPE_ED, align 4
  %122 = call i64 @gfs2_metatype_check(%struct.gfs2_sbd* %115, %struct.buffer_head* %120, i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %142

124:                                              ; preds = %114
  br label %125

125:                                              ; preds = %136, %124
  %126 = load i32, i32* %13, align 4
  %127 = load i32, i32* %11, align 4
  %128 = icmp ult i32 %126, %127
  br i1 %128, label %129, label %139

129:                                              ; preds = %125
  %130 = load %struct.buffer_head**, %struct.buffer_head*** %9, align 8
  %131 = load i32, i32* %13, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %130, i64 %132
  %134 = load %struct.buffer_head*, %struct.buffer_head** %133, align 8
  %135 = call i32 @brelse(%struct.buffer_head* %134)
  br label %136

136:                                              ; preds = %129
  %137 = load i32, i32* %13, align 4
  %138 = add i32 %137, 1
  store i32 %138, i32* %13, align 4
  br label %125

139:                                              ; preds = %125
  %140 = load i32, i32* @EIO, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %14, align 4
  br label %200

142:                                              ; preds = %114
  %143 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %144 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.buffer_head**, %struct.buffer_head*** %9, align 8
  %147 = load i32, i32* %13, align 4
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %146, i64 %148
  %150 = load %struct.buffer_head*, %struct.buffer_head** %149, align 8
  %151 = call i32 @gfs2_trans_add_meta(i32 %145, %struct.buffer_head* %150)
  %152 = load %struct.buffer_head**, %struct.buffer_head*** %9, align 8
  %153 = load i32, i32* %13, align 4
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %152, i64 %154
  %156 = load %struct.buffer_head*, %struct.buffer_head** %155, align 8
  %157 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = add i64 %158, 4
  %160 = load i8*, i8** %7, align 8
  %161 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %162 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* %10, align 4
  %165 = icmp ugt i32 %163, %164
  br i1 %165, label %166, label %168

166:                                              ; preds = %142
  %167 = load i32, i32* %10, align 4
  br label %172

168:                                              ; preds = %142
  %169 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %170 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  br label %172

172:                                              ; preds = %168, %166
  %173 = phi i32 [ %167, %166 ], [ %171, %168 ]
  %174 = call i32 @memcpy(i64 %159, i8* %160, i32 %173)
  %175 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %176 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* %10, align 4
  %179 = sub i32 %178, %177
  store i32 %179, i32* %10, align 4
  %180 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %181 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load i8*, i8** %7, align 8
  %184 = zext i32 %182 to i64
  %185 = getelementptr inbounds i8, i8* %183, i64 %184
  store i8* %185, i8** %7, align 8
  %186 = load %struct.buffer_head**, %struct.buffer_head*** %9, align 8
  %187 = load i32, i32* %13, align 4
  %188 = zext i32 %187 to i64
  %189 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %186, i64 %188
  %190 = load %struct.buffer_head*, %struct.buffer_head** %189, align 8
  %191 = call i32 @brelse(%struct.buffer_head* %190)
  br label %192

192:                                              ; preds = %172
  %193 = load i32, i32* %13, align 4
  %194 = add i32 %193, 1
  store i32 %194, i32* %13, align 4
  br label %84

195:                                              ; preds = %84
  br label %196

196:                                              ; preds = %195, %44
  %197 = load %struct.buffer_head**, %struct.buffer_head*** %9, align 8
  %198 = call i32 @kfree(%struct.buffer_head** %197)
  %199 = load i32, i32* %14, align 4
  store i32 %199, i32* %4, align 4
  br label %206

200:                                              ; preds = %139, %113, %76
  %201 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %202 = call i32 @gfs2_trans_end(%struct.gfs2_sbd* %201)
  %203 = load %struct.buffer_head**, %struct.buffer_head*** %9, align 8
  %204 = call i32 @kfree(%struct.buffer_head** %203)
  %205 = load i32, i32* %14, align 4
  store i32 %205, i32* %4, align 4
  br label %206

206:                                              ; preds = %200, %196, %32
  %207 = load i32, i32* %4, align 4
  ret i32 %207
}

declare dso_local %struct.gfs2_sbd* @GFS2_SB(i32*) #1

declare dso_local i32 @GFS2_EA_DATA_LEN(%struct.gfs2_ea_header*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32* @GFS2_EA2DATAPTRS(%struct.gfs2_ea_header*) #1

declare dso_local %struct.buffer_head** @kcalloc(i32, i32, i32) #1

declare dso_local i32 @gfs2_trans_begin(%struct.gfs2_sbd*, i64, i32) #1

declare dso_local i32 @gfs2_meta_read(i32, i32, i32, %struct.buffer_head**) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @gfs2_meta_wait(%struct.gfs2_sbd*, %struct.buffer_head*) #1

declare dso_local i64 @gfs2_metatype_check(%struct.gfs2_sbd*, %struct.buffer_head*, i32) #1

declare dso_local i32 @gfs2_trans_add_meta(i32, %struct.buffer_head*) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i32 @kfree(%struct.buffer_head**) #1

declare dso_local i32 @gfs2_trans_end(%struct.gfs2_sbd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
