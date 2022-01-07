; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ntfs/extr_attrib.c_ntfs_attr_vcn_to_lcn_nolock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ntfs/extr_attrib.c_ntfs_attr_vcn_to_lcn_nolock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__*, %struct.TYPE_7__, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }

@.str = private unnamed_addr constant [49 x i8] c"Entering for i_ino 0x%lx, vcn 0x%llx, %s_locked.\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@LCN_ENOENT = common dso_local global i64 0, align 8
@LCN_HOLE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c"Done, lcn 0x%llx.\00", align 1
@LCN_RL_NOT_MAPPED = common dso_local global i64 0, align 8
@LCN_EIO = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@LCN_ENOMEM = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [29 x i8] c"Failed with error code %lli.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ntfs_attr_vcn_to_lcn_nolock(%struct.TYPE_9__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = load i64, i64* %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %21 = call i32 (i8*, i64, ...) @ntfs_debug(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %15, i64 %16, i8* %20)
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %23 = icmp ne %struct.TYPE_9__* %22, null
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @BUG_ON(i32 %25)
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %28 = call i32 @NInoNonResident(%struct.TYPE_9__* %27)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i32 @BUG_ON(i32 %31)
  %33 = load i64, i64* %6, align 8
  %34 = icmp slt i64 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 @BUG_ON(i32 %35)
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %62, label %42

42:                                               ; preds = %3
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 2
  %45 = load i64, i64* %9, align 8
  %46 = call i32 @read_lock_irqsave(i32* %44, i64 %45)
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %42
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 2
  %54 = load i64, i64* %9, align 8
  %55 = call i32 @read_unlock_irqrestore(i32* %53, i64 %54)
  %56 = load i64, i64* @LCN_ENOENT, align 8
  store i64 %56, i64* %4, align 8
  br label %183

57:                                               ; preds = %42
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 2
  %60 = load i64, i64* %9, align 8
  %61 = call i32 @read_unlock_irqrestore(i32* %59, i64 %60)
  br label %62

62:                                               ; preds = %57, %3
  br label %63

63:                                               ; preds = %149, %117, %62
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i64, i64* %6, align 8
  %69 = call i64 @ntfs_rl_vcn_to_lcn(i32 %67, i64 %68)
  store i64 %69, i64* %8, align 8
  %70 = load i64, i64* %8, align 8
  %71 = load i64, i64* @LCN_HOLE, align 8
  %72 = icmp sge i64 %70, %71
  %73 = zext i1 %72 to i32
  %74 = call i64 @likely(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %63
  %77 = load i64, i64* %8, align 8
  %78 = call i32 (i8*, i64, ...) @ntfs_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i64 %77)
  %79 = load i64, i64* %8, align 8
  store i64 %79, i64* %4, align 8
  br label %183

80:                                               ; preds = %63
  %81 = load i64, i64* %8, align 8
  %82 = load i64, i64* @LCN_RL_NOT_MAPPED, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %80
  %85 = load i64, i64* %8, align 8
  %86 = load i64, i64* @LCN_ENOENT, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %84
  %89 = load i64, i64* @LCN_EIO, align 8
  store i64 %89, i64* %8, align 8
  br label %90

90:                                               ; preds = %88, %84
  br label %169

91:                                               ; preds = %80
  %92 = load i32, i32* %10, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %168, label %94

94:                                               ; preds = %91
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %127, label %97

97:                                               ; preds = %94
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = call i32 @up_read(i32* %100)
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = call i32 @down_write(i32* %104)
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i64, i64* %6, align 8
  %111 = call i64 @ntfs_rl_vcn_to_lcn(i32 %109, i64 %110)
  %112 = load i64, i64* @LCN_RL_NOT_MAPPED, align 8
  %113 = icmp ne i64 %111, %112
  %114 = zext i1 %113 to i32
  %115 = call i64 @unlikely(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %126

117:                                              ; preds = %97
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = call i32 @up_write(i32* %120)
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = call i32 @down_read(i32* %124)
  br label %63

126:                                              ; preds = %97
  br label %127

127:                                              ; preds = %126, %94
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %129 = load i64, i64* %6, align 8
  %130 = call i32 @ntfs_map_runlist_nolock(%struct.TYPE_9__* %128, i64 %129, i32* null)
  store i32 %130, i32* %11, align 4
  %131 = load i32, i32* %7, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %142, label %133

133:                                              ; preds = %127
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  %137 = call i32 @up_write(i32* %136)
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 0
  %141 = call i32 @down_read(i32* %140)
  br label %142

142:                                              ; preds = %133, %127
  %143 = load i32, i32* %11, align 4
  %144 = icmp ne i32 %143, 0
  %145 = xor i1 %144, true
  %146 = zext i1 %145 to i32
  %147 = call i64 @likely(i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %142
  store i32 1, i32* %10, align 4
  br label %63

150:                                              ; preds = %142
  %151 = load i32, i32* %11, align 4
  %152 = load i32, i32* @ENOENT, align 4
  %153 = sub nsw i32 0, %152
  %154 = icmp eq i32 %151, %153
  br i1 %154, label %155, label %157

155:                                              ; preds = %150
  %156 = load i64, i64* @LCN_ENOENT, align 8
  store i64 %156, i64* %8, align 8
  br label %167

157:                                              ; preds = %150
  %158 = load i32, i32* %11, align 4
  %159 = load i32, i32* @ENOMEM, align 4
  %160 = sub nsw i32 0, %159
  %161 = icmp eq i32 %158, %160
  br i1 %161, label %162, label %164

162:                                              ; preds = %157
  %163 = load i64, i64* @LCN_ENOMEM, align 8
  store i64 %163, i64* %8, align 8
  br label %166

164:                                              ; preds = %157
  %165 = load i64, i64* @LCN_EIO, align 8
  store i64 %165, i64* %8, align 8
  br label %166

166:                                              ; preds = %164, %162
  br label %167

167:                                              ; preds = %166, %155
  br label %168

168:                                              ; preds = %167, %91
  br label %169

169:                                              ; preds = %168, %90
  %170 = load i64, i64* %8, align 8
  %171 = load i64, i64* @LCN_ENOENT, align 8
  %172 = icmp ne i64 %170, %171
  br i1 %172, label %173, label %181

173:                                              ; preds = %169
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 0
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load i64, i64* %8, align 8
  %180 = call i32 @ntfs_error(i32 %178, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i64 %179)
  br label %181

181:                                              ; preds = %173, %169
  %182 = load i64, i64* %8, align 8
  store i64 %182, i64* %4, align 8
  br label %183

183:                                              ; preds = %181, %76, %51
  %184 = load i64, i64* %4, align 8
  ret i64 %184
}

declare dso_local i32 @ntfs_debug(i8*, i64, ...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @NInoNonResident(%struct.TYPE_9__*) #1

declare dso_local i32 @read_lock_irqsave(i32*, i64) #1

declare dso_local i32 @read_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @ntfs_rl_vcn_to_lcn(i32, i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @ntfs_map_runlist_nolock(%struct.TYPE_9__*, i64, i32*) #1

declare dso_local i32 @ntfs_error(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
