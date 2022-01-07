; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_inode.c_gfs2_dinode_out.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_inode.c_gfs2_dinode_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { i32, i32, %struct.TYPE_13__, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.gfs2_dinode = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i8*, i8* }
%struct.TYPE_8__ = type { i8*, i8*, i8* }

@GFS2_MAGIC = common dso_local global i32 0, align 4
@GFS2_METATYPE_DI = common dso_local global i32 0, align 4
@GFS2_FORMAT_DI = common dso_local global i32 0, align 4
@GFS2_DIF_EXHASH = common dso_local global i32 0, align 4
@GFS2_FORMAT_DE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gfs2_dinode_out(%struct.gfs2_inode* %0, i8* %1) #0 {
  %3 = alloca %struct.gfs2_inode*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.gfs2_dinode*, align 8
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.gfs2_dinode*
  store %struct.gfs2_dinode* %7, %struct.gfs2_dinode** %5, align 8
  %8 = load i32, i32* @GFS2_MAGIC, align 4
  %9 = call i8* @cpu_to_be32(i32 %8)
  %10 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %5, align 8
  %11 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %10, i32 0, i32 22
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 2
  store i8* %9, i8** %12, align 8
  %13 = load i32, i32* @GFS2_METATYPE_DI, align 4
  %14 = call i8* @cpu_to_be32(i32 %13)
  %15 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %5, align 8
  %16 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %15, i32 0, i32 22
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  store i8* %14, i8** %17, align 8
  %18 = load i32, i32* @GFS2_FORMAT_DI, align 4
  %19 = call i8* @cpu_to_be32(i32 %18)
  %20 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %5, align 8
  %21 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %20, i32 0, i32 22
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  store i8* %19, i8** %22, align 8
  %23 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %24 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %23, i32 0, i32 9
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @cpu_to_be64(i32 %25)
  %27 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %5, align 8
  %28 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %27, i32 0, i32 21
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  store i8* %26, i8** %29, align 8
  %30 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %31 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %30, i32 0, i32 8
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @cpu_to_be64(i32 %32)
  %34 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %5, align 8
  %35 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %34, i32 0, i32 21
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  store i8* %33, i8** %36, align 8
  %37 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %38 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @cpu_to_be32(i32 %40)
  %42 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %5, align 8
  %43 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %42, i32 0, i32 20
  store i8* %41, i8** %43, align 8
  %44 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %45 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @cpu_to_be32(i32 %47)
  %49 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %5, align 8
  %50 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %49, i32 0, i32 19
  store i8* %48, i8** %50, align 8
  %51 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %52 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i8* @cpu_to_be32(i32 %54)
  %56 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %5, align 8
  %57 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %56, i32 0, i32 18
  store i8* %55, i8** %57, align 8
  %58 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %59 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @cpu_to_be32(i32 %61)
  %63 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %5, align 8
  %64 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %63, i32 0, i32 17
  store i8* %62, i8** %64, align 8
  %65 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %66 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %65, i32 0, i32 2
  %67 = call i32 @i_size_read(%struct.TYPE_13__* %66)
  %68 = call i8* @cpu_to_be64(i32 %67)
  %69 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %5, align 8
  %70 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %69, i32 0, i32 16
  store i8* %68, i8** %70, align 8
  %71 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %72 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %71, i32 0, i32 2
  %73 = call i32 @gfs2_get_inode_blocks(%struct.TYPE_13__* %72)
  %74 = call i8* @cpu_to_be64(i32 %73)
  %75 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %5, align 8
  %76 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %75, i32 0, i32 15
  store i8* %74, i8** %76, align 8
  %77 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %78 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 6
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i8* @cpu_to_be64(i32 %81)
  %83 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %5, align 8
  %84 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %83, i32 0, i32 14
  store i8* %82, i8** %84, align 8
  %85 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %86 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 5
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i8* @cpu_to_be64(i32 %89)
  %91 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %5, align 8
  %92 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %91, i32 0, i32 13
  store i8* %90, i8** %92, align 8
  %93 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %94 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i8* @cpu_to_be64(i32 %97)
  %99 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %5, align 8
  %100 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %99, i32 0, i32 12
  store i8* %98, i8** %100, align 8
  %101 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %102 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %101, i32 0, i32 7
  %103 = load i32, i32* %102, align 4
  %104 = call i8* @cpu_to_be64(i32 %103)
  %105 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %5, align 8
  %106 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %105, i32 0, i32 11
  store i8* %104, i8** %106, align 8
  %107 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %108 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %107, i32 0, i32 7
  %109 = load i32, i32* %108, align 4
  %110 = call i8* @cpu_to_be64(i32 %109)
  %111 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %5, align 8
  %112 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %111, i32 0, i32 10
  store i8* %110, i8** %112, align 8
  %113 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %114 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %113, i32 0, i32 6
  %115 = load i32, i32* %114, align 4
  %116 = call i8* @cpu_to_be64(i32 %115)
  %117 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %5, align 8
  %118 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %117, i32 0, i32 9
  store i8* %116, i8** %118, align 8
  %119 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %120 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i8* @cpu_to_be32(i32 %121)
  %123 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %5, align 8
  %124 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %123, i32 0, i32 8
  store i8* %122, i8** %124, align 8
  %125 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %126 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %125, i32 0, i32 5
  %127 = load i32, i32* %126, align 4
  %128 = call i8* @cpu_to_be16(i32 %127)
  %129 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %5, align 8
  %130 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %129, i32 0, i32 7
  store i8* %128, i8** %130, align 8
  %131 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %132 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i64 @S_ISDIR(i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %146

137:                                              ; preds = %2
  %138 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %139 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @GFS2_DIF_EXHASH, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %146, label %144

144:                                              ; preds = %137
  %145 = load i32, i32* @GFS2_FORMAT_DE, align 4
  br label %147

146:                                              ; preds = %137, %2
  br label %147

147:                                              ; preds = %146, %144
  %148 = phi i32 [ %145, %144 ], [ 0, %146 ]
  %149 = call i8* @cpu_to_be32(i32 %148)
  %150 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %5, align 8
  %151 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %150, i32 0, i32 6
  store i8* %149, i8** %151, align 8
  %152 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %153 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 4
  %155 = call i8* @cpu_to_be16(i32 %154)
  %156 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %5, align 8
  %157 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %156, i32 0, i32 5
  store i8* %155, i8** %157, align 8
  %158 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %159 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = call i8* @cpu_to_be32(i32 %160)
  %162 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %5, align 8
  %163 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %162, i32 0, i32 4
  store i8* %161, i8** %163, align 8
  %164 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %165 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = call i8* @cpu_to_be64(i32 %166)
  %168 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %5, align 8
  %169 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %168, i32 0, i32 3
  store i8* %167, i8** %169, align 8
  %170 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %171 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 6
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = call i8* @cpu_to_be32(i32 %174)
  %176 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %5, align 8
  %177 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %176, i32 0, i32 2
  store i8* %175, i8** %177, align 8
  %178 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %179 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %178, i32 0, i32 2
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 5
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = call i8* @cpu_to_be32(i32 %182)
  %184 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %5, align 8
  %185 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %184, i32 0, i32 1
  store i8* %183, i8** %185, align 8
  %186 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %187 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %186, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 4
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = call i8* @cpu_to_be32(i32 %190)
  %192 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %5, align 8
  %193 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %192, i32 0, i32 0
  store i8* %191, i8** %193, align 8
  ret void
}

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i8* @cpu_to_be64(i32) #1

declare dso_local i32 @i_size_read(%struct.TYPE_13__*) #1

declare dso_local i32 @gfs2_get_inode_blocks(%struct.TYPE_13__*) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
