; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_dir.c_gfs2_dir_read_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_dir.c_gfs2_dir_read_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { i32, i32 }
%struct.gfs2_sbd = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.buffer_head = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@DIO_WAIT = common dso_local global i32 0, align 4
@GFS2_METATYPE_JD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_inode*, i8*, i64, i32, i32)* @gfs2_dir_read_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_dir_read_data(%struct.gfs2_inode* %0, i8* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.gfs2_inode*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.gfs2_sbd*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.buffer_head*, align 8
  %22 = alloca i32, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %23 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %24 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %23, i32 0, i32 1
  %25 = call %struct.gfs2_sbd* @GFS2_SB(i32* %24)
  store %struct.gfs2_sbd* %25, %struct.gfs2_sbd** %12, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %26 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %27 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %26, i32 0, i32 1
  %28 = call i64 @i_size_read(i32* %27)
  store i64 %28, i64* %19, align 8
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* %19, align 8
  %31 = icmp sge i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %187

33:                                               ; preds = %5
  %34 = load i64, i64* %9, align 8
  %35 = load i32, i32* %10, align 4
  %36 = zext i32 %35 to i64
  %37 = add nsw i64 %34, %36
  %38 = load i64, i64* %19, align 8
  %39 = icmp sgt i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %33
  %41 = load i64, i64* %19, align 8
  %42 = load i64, i64* %9, align 8
  %43 = sub nsw i64 %41, %42
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %10, align 4
  br label %45

45:                                               ; preds = %40, %33
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  store i32 0, i32* %6, align 4
  br label %187

49:                                               ; preds = %45
  %50 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %51 = call i64 @gfs2_is_stuffed(%struct.gfs2_inode* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = load i64, i64* %9, align 8
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @gfs2_dir_read_stuffed(%struct.gfs2_inode* %54, i8* %55, i64 %56, i32 %57)
  store i32 %58, i32* %6, align 4
  br label %187

59:                                               ; preds = %49
  %60 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %12, align 8
  %61 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %62 = call i32 @gfs2_is_jdata(%struct.gfs2_inode* %61)
  %63 = call i64 @gfs2_assert_warn(%struct.gfs2_sbd* %60, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %6, align 4
  br label %187

68:                                               ; preds = %59
  %69 = load i64, i64* %9, align 8
  store i64 %69, i64* %13, align 8
  %70 = load i64, i64* %13, align 8
  %71 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %12, align 8
  %72 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @do_div(i64 %70, i32 %73)
  %75 = sext i32 %74 to i64
  %76 = add i64 %75, 4
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %16, align 4
  br label %78

78:                                               ; preds = %151, %68
  %79 = load i32, i32* %17, align 4
  %80 = load i32, i32* %10, align 4
  %81 = icmp ult i32 %79, %80
  br i1 %81, label %82, label %176

82:                                               ; preds = %78
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* %17, align 4
  %85 = sub i32 %83, %84
  store i32 %85, i32* %20, align 4
  %86 = load i32, i32* %20, align 4
  %87 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %12, align 8
  %88 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %16, align 4
  %92 = sub i32 %90, %91
  %93 = icmp ugt i32 %86, %92
  br i1 %93, label %94, label %101

94:                                               ; preds = %82
  %95 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %12, align 8
  %96 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %16, align 4
  %100 = sub i32 %98, %99
  store i32 %100, i32* %20, align 4
  br label %101

101:                                              ; preds = %94, %82
  %102 = load i32, i32* %15, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %130, label %104

104:                                              ; preds = %101
  store i32 0, i32* %22, align 4
  %105 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %106 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %105, i32 0, i32 1
  %107 = load i64, i64* %13, align 8
  %108 = call i32 @gfs2_extent_map(i32* %106, i64 %107, i32* %22, i64* %14, i32* %15)
  store i32 %108, i32* %18, align 4
  %109 = load i32, i32* %18, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %104
  %112 = load i64, i64* %14, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %111, %104
  br label %178

115:                                              ; preds = %111
  %116 = load i32, i32* %15, align 4
  %117 = icmp slt i32 %116, 1
  %118 = zext i1 %117 to i32
  %119 = call i32 @BUG_ON(i32 %118)
  %120 = load i32, i32* %11, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %115
  store i32 1, i32* %15, align 4
  br label %123

123:                                              ; preds = %122, %115
  %124 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %125 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i64, i64* %14, align 8
  %128 = load i32, i32* %15, align 4
  %129 = call %struct.buffer_head* @gfs2_meta_ra(i32 %126, i64 %127, i32 %128)
  store %struct.buffer_head* %129, %struct.buffer_head** %21, align 8
  br label %141

130:                                              ; preds = %101
  %131 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %132 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i64, i64* %14, align 8
  %135 = load i32, i32* @DIO_WAIT, align 4
  %136 = call i32 @gfs2_meta_read(i32 %133, i64 %134, i32 %135, %struct.buffer_head** %21)
  store i32 %136, i32* %18, align 4
  %137 = load i32, i32* %18, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %130
  br label %178

140:                                              ; preds = %130
  br label %141

141:                                              ; preds = %140, %123
  %142 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %12, align 8
  %143 = load %struct.buffer_head*, %struct.buffer_head** %21, align 8
  %144 = load i32, i32* @GFS2_METATYPE_JD, align 4
  %145 = call i32 @gfs2_metatype_check(%struct.gfs2_sbd* %142, %struct.buffer_head* %143, i32 %144)
  store i32 %145, i32* %18, align 4
  %146 = load i32, i32* %18, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %141
  %149 = load %struct.buffer_head*, %struct.buffer_head** %21, align 8
  %150 = call i32 @brelse(%struct.buffer_head* %149)
  br label %178

151:                                              ; preds = %141
  %152 = load i64, i64* %14, align 8
  %153 = add nsw i64 %152, 1
  store i64 %153, i64* %14, align 8
  %154 = load i32, i32* %15, align 4
  %155 = add nsw i32 %154, -1
  store i32 %155, i32* %15, align 4
  %156 = load i8*, i8** %8, align 8
  %157 = load %struct.buffer_head*, %struct.buffer_head** %21, align 8
  %158 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i32, i32* %16, align 4
  %161 = zext i32 %160 to i64
  %162 = add nsw i64 %159, %161
  %163 = load i32, i32* %20, align 4
  %164 = call i32 @memcpy(i8* %156, i64 %162, i32 %163)
  %165 = load %struct.buffer_head*, %struct.buffer_head** %21, align 8
  %166 = call i32 @brelse(%struct.buffer_head* %165)
  %167 = load i32, i32* %20, align 4
  %168 = load i8*, i8** %8, align 8
  %169 = zext i32 %167 to i64
  %170 = getelementptr inbounds i8, i8* %168, i64 %169
  store i8* %170, i8** %8, align 8
  %171 = load i32, i32* %20, align 4
  %172 = load i32, i32* %17, align 4
  %173 = add i32 %172, %171
  store i32 %173, i32* %17, align 4
  %174 = load i64, i64* %13, align 8
  %175 = add nsw i64 %174, 1
  store i64 %175, i64* %13, align 8
  store i32 4, i32* %16, align 4
  br label %78

176:                                              ; preds = %78
  %177 = load i32, i32* %17, align 4
  store i32 %177, i32* %6, align 4
  br label %187

178:                                              ; preds = %148, %139, %114
  %179 = load i32, i32* %17, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %178
  %182 = load i32, i32* %17, align 4
  br label %185

183:                                              ; preds = %178
  %184 = load i32, i32* %18, align 4
  br label %185

185:                                              ; preds = %183, %181
  %186 = phi i32 [ %182, %181 ], [ %184, %183 ]
  store i32 %186, i32* %6, align 4
  br label %187

187:                                              ; preds = %185, %176, %65, %53, %48, %32
  %188 = load i32, i32* %6, align 4
  ret i32 %188
}

declare dso_local %struct.gfs2_sbd* @GFS2_SB(i32*) #1

declare dso_local i64 @i_size_read(i32*) #1

declare dso_local i64 @gfs2_is_stuffed(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_dir_read_stuffed(%struct.gfs2_inode*, i8*, i64, i32) #1

declare dso_local i64 @gfs2_assert_warn(%struct.gfs2_sbd*, i32) #1

declare dso_local i32 @gfs2_is_jdata(%struct.gfs2_inode*) #1

declare dso_local i32 @do_div(i64, i32) #1

declare dso_local i32 @gfs2_extent_map(i32*, i64, i32*, i64*, i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.buffer_head* @gfs2_meta_ra(i32, i64, i32) #1

declare dso_local i32 @gfs2_meta_read(i32, i64, i32, %struct.buffer_head**) #1

declare dso_local i32 @gfs2_metatype_check(%struct.gfs2_sbd*, %struct.buffer_head*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @memcpy(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
