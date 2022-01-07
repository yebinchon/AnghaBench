; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_dir.c_ubifs_new_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_dir.c_ubifs_new_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i64, i32, i64, i32, i32, i32 }
%struct.inode = type { i32, i64, i32*, i32, i32*, %struct.TYPE_2__*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32*, i32*, i64 }
%struct.ubifs_inode = type { i64, i64, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@S_NOCMTIME = common dso_local global i32 0, align 4
@S_ISGID = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4
@ubifs_file_address_operations = common dso_local global i32 0, align 4
@ubifs_file_inode_operations = common dso_local global i32 0, align 4
@ubifs_file_operations = common dso_local global i32 0, align 4
@ubifs_dir_inode_operations = common dso_local global i32 0, align 4
@ubifs_dir_operations = common dso_local global i32 0, align 4
@UBIFS_INO_NODE_SZ = common dso_local global i32 0, align 4
@ubifs_symlink_inode_operations = common dso_local global i32 0, align 4
@UBIFS_COMPR_NONE = common dso_local global i32 0, align 4
@INUM_WARN_WATERMARK = common dso_local global i64 0, align 8
@INUM_WATERMARK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"out of inode numbers\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"running out of inode numbers (current %lu, max %d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @ubifs_new_inode(%struct.ubifs_info* %0, %struct.inode* %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.ubifs_info*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.ubifs_inode*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %11 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.inode* @new_inode(i32 %12)
  store %struct.inode* %13, %struct.inode** %8, align 8
  %14 = load %struct.inode*, %struct.inode** %8, align 8
  %15 = call %struct.ubifs_inode* @ubifs_inode(%struct.inode* %14)
  store %struct.ubifs_inode* %15, %struct.ubifs_inode** %9, align 8
  %16 = load %struct.inode*, %struct.inode** %8, align 8
  %17 = icmp ne %struct.inode* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.inode* @ERR_PTR(i32 %20)
  store %struct.inode* %21, %struct.inode** %4, align 8
  br label %180

22:                                               ; preds = %3
  %23 = load i32, i32* @S_NOCMTIME, align 4
  %24 = load %struct.inode*, %struct.inode** %8, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 11
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = call i32 (...) @current_fsuid()
  %29 = load %struct.inode*, %struct.inode** %8, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 10
  store i32 %28, i32* %30, align 8
  %31 = load %struct.inode*, %struct.inode** %6, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @S_ISGID, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %22
  %38 = load %struct.inode*, %struct.inode** %6, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 9
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.inode*, %struct.inode** %8, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 9
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i64 @S_ISDIR(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %37
  %47 = load i32, i32* @S_ISGID, align 4
  %48 = load i32, i32* %7, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %46, %37
  br label %55

51:                                               ; preds = %22
  %52 = call i32 (...) @current_fsgid()
  %53 = load %struct.inode*, %struct.inode** %8, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 9
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %51, %50
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.inode*, %struct.inode** %8, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.inode*, %struct.inode** %8, align 8
  %60 = call i32 @ubifs_current_time(%struct.inode* %59)
  %61 = load %struct.inode*, %struct.inode** %8, align 8
  %62 = getelementptr inbounds %struct.inode, %struct.inode* %61, i32 0, i32 6
  store i32 %60, i32* %62, align 8
  %63 = load %struct.inode*, %struct.inode** %8, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 7
  store i32 %60, i32* %64, align 4
  %65 = load %struct.inode*, %struct.inode** %8, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 8
  store i32 %60, i32* %66, align 8
  %67 = load %struct.inode*, %struct.inode** %8, align 8
  %68 = getelementptr inbounds %struct.inode, %struct.inode* %67, i32 0, i32 5
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 2
  store i64 0, i64* %70, align 8
  %71 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %72 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %71, i32 0, i32 4
  %73 = load %struct.inode*, %struct.inode** %8, align 8
  %74 = getelementptr inbounds %struct.inode, %struct.inode* %73, i32 0, i32 5
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  store i32* %72, i32** %76, align 8
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @S_IFMT, align 4
  %79 = and i32 %77, %78
  switch i32 %79, label %105 [
    i32 129, label %80
    i32 132, label %89
    i32 130, label %99
    i32 128, label %102
    i32 131, label %102
    i32 134, label %102
    i32 133, label %102
  ]

80:                                               ; preds = %55
  %81 = load %struct.inode*, %struct.inode** %8, align 8
  %82 = getelementptr inbounds %struct.inode, %struct.inode* %81, i32 0, i32 5
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  store i32* @ubifs_file_address_operations, i32** %84, align 8
  %85 = load %struct.inode*, %struct.inode** %8, align 8
  %86 = getelementptr inbounds %struct.inode, %struct.inode* %85, i32 0, i32 2
  store i32* @ubifs_file_inode_operations, i32** %86, align 8
  %87 = load %struct.inode*, %struct.inode** %8, align 8
  %88 = getelementptr inbounds %struct.inode, %struct.inode* %87, i32 0, i32 4
  store i32* @ubifs_file_operations, i32** %88, align 8
  br label %107

89:                                               ; preds = %55
  %90 = load %struct.inode*, %struct.inode** %8, align 8
  %91 = getelementptr inbounds %struct.inode, %struct.inode* %90, i32 0, i32 2
  store i32* @ubifs_dir_inode_operations, i32** %91, align 8
  %92 = load %struct.inode*, %struct.inode** %8, align 8
  %93 = getelementptr inbounds %struct.inode, %struct.inode* %92, i32 0, i32 4
  store i32* @ubifs_dir_operations, i32** %93, align 8
  %94 = load i32, i32* @UBIFS_INO_NODE_SZ, align 4
  %95 = load %struct.ubifs_inode*, %struct.ubifs_inode** %9, align 8
  %96 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %95, i32 0, i32 4
  store i32 %94, i32* %96, align 8
  %97 = load %struct.inode*, %struct.inode** %8, align 8
  %98 = getelementptr inbounds %struct.inode, %struct.inode* %97, i32 0, i32 3
  store i32 %94, i32* %98, align 8
  br label %107

99:                                               ; preds = %55
  %100 = load %struct.inode*, %struct.inode** %8, align 8
  %101 = getelementptr inbounds %struct.inode, %struct.inode* %100, i32 0, i32 2
  store i32* @ubifs_symlink_inode_operations, i32** %101, align 8
  br label %107

102:                                              ; preds = %55, %55, %55, %55
  %103 = load %struct.inode*, %struct.inode** %8, align 8
  %104 = getelementptr inbounds %struct.inode, %struct.inode* %103, i32 0, i32 2
  store i32* @ubifs_file_inode_operations, i32** %104, align 8
  br label %107

105:                                              ; preds = %55
  %106 = call i32 (...) @BUG()
  br label %107

107:                                              ; preds = %105, %102, %99, %89, %80
  %108 = load %struct.inode*, %struct.inode** %6, align 8
  %109 = load i32, i32* %7, align 4
  %110 = call i32 @inherit_flags(%struct.inode* %108, i32 %109)
  %111 = load %struct.ubifs_inode*, %struct.ubifs_inode** %9, align 8
  %112 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %111, i32 0, i32 3
  store i32 %110, i32* %112, align 4
  %113 = load %struct.inode*, %struct.inode** %8, align 8
  %114 = call i32 @ubifs_set_inode_flags(%struct.inode* %113)
  %115 = load i32, i32* %7, align 4
  %116 = call i64 @S_ISREG(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %107
  %119 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %120 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.ubifs_inode*, %struct.ubifs_inode** %9, align 8
  %123 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %122, i32 0, i32 2
  store i32 %121, i32* %123, align 8
  br label %128

124:                                              ; preds = %107
  %125 = load i32, i32* @UBIFS_COMPR_NONE, align 4
  %126 = load %struct.ubifs_inode*, %struct.ubifs_inode** %9, align 8
  %127 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %126, i32 0, i32 2
  store i32 %125, i32* %127, align 8
  br label %128

128:                                              ; preds = %124, %118
  %129 = load %struct.ubifs_inode*, %struct.ubifs_inode** %9, align 8
  %130 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %129, i32 0, i32 1
  store i64 0, i64* %130, align 8
  %131 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %132 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %131, i32 0, i32 1
  %133 = call i32 @spin_lock(i32* %132)
  %134 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %135 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @INUM_WARN_WATERMARK, align 8
  %138 = icmp sge i64 %136, %137
  br i1 %138, label %139, label %163

139:                                              ; preds = %128
  %140 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %141 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @INUM_WATERMARK, align 8
  %144 = icmp sge i64 %142, %143
  br i1 %144, label %145, label %157

145:                                              ; preds = %139
  %146 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %147 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %146, i32 0, i32 1
  %148 = call i32 @spin_unlock(i32* %147)
  %149 = call i32 @ubifs_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %150 = load %struct.inode*, %struct.inode** %8, align 8
  %151 = call i32 @make_bad_inode(%struct.inode* %150)
  %152 = load %struct.inode*, %struct.inode** %8, align 8
  %153 = call i32 @iput(%struct.inode* %152)
  %154 = load i32, i32* @EINVAL, align 4
  %155 = sub nsw i32 0, %154
  %156 = call %struct.inode* @ERR_PTR(i32 %155)
  store %struct.inode* %156, %struct.inode** %4, align 8
  br label %180

157:                                              ; preds = %139
  %158 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %159 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @INUM_WATERMARK, align 8
  %162 = call i32 @ubifs_warn(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i64 %160, i64 %161)
  br label %163

163:                                              ; preds = %157, %128
  %164 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %165 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = add nsw i64 %166, 1
  store i64 %167, i64* %165, align 8
  %168 = load %struct.inode*, %struct.inode** %8, align 8
  %169 = getelementptr inbounds %struct.inode, %struct.inode* %168, i32 0, i32 1
  store i64 %167, i64* %169, align 8
  %170 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %171 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = add nsw i64 %172, 1
  store i64 %173, i64* %171, align 8
  %174 = load %struct.ubifs_inode*, %struct.ubifs_inode** %9, align 8
  %175 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %174, i32 0, i32 0
  store i64 %173, i64* %175, align 8
  %176 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %177 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %176, i32 0, i32 1
  %178 = call i32 @spin_unlock(i32* %177)
  %179 = load %struct.inode*, %struct.inode** %8, align 8
  store %struct.inode* %179, %struct.inode** %4, align 8
  br label %180

180:                                              ; preds = %163, %145, %18
  %181 = load %struct.inode*, %struct.inode** %4, align 8
  ret %struct.inode* %181
}

declare dso_local %struct.inode* @new_inode(i32) #1

declare dso_local %struct.ubifs_inode* @ubifs_inode(%struct.inode*) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local i32 @current_fsuid(...) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @current_fsgid(...) #1

declare dso_local i32 @ubifs_current_time(%struct.inode*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @inherit_flags(%struct.inode*, i32) #1

declare dso_local i32 @ubifs_set_inode_flags(%struct.inode*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ubifs_err(i8*) #1

declare dso_local i32 @make_bad_inode(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @ubifs_warn(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
