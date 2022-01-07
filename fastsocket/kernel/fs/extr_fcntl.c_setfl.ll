; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_fcntl.c_setfl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_fcntl.c_setfl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i64, i32, %struct.TYPE_10__*, %struct.TYPE_9__*, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32 (i64)*, i32 (i32, %struct.file*, i32)* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.inode* }
%struct.inode = type { i32 }

@O_APPEND = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@O_NOATIME = common dso_local global i64 0, align 8
@O_NONBLOCK = common dso_local global i64 0, align 8
@O_NDELAY = common dso_local global i64 0, align 8
@O_DIRECT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@FASYNC = common dso_local global i64 0, align 8
@SETFL_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.file*, i64)* @setfl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setfl(i32 %0, %struct.file* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.file* %1, %struct.file** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.file*, %struct.file** %6, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 4
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.inode*, %struct.inode** %14, align 8
  store %struct.inode* %15, %struct.inode** %8, align 8
  store i32 0, i32* %9, align 4
  %16 = load i64, i64* %7, align 8
  %17 = load %struct.file*, %struct.file** %6, align 8
  %18 = getelementptr inbounds %struct.file, %struct.file* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = xor i64 %16, %19
  %21 = load i64, i64* @O_APPEND, align 8
  %22 = and i64 %20, %21
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %3
  %25 = load %struct.inode*, %struct.inode** %8, align 8
  %26 = call i64 @IS_APPEND(%struct.inode* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32, i32* @EPERM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %184

31:                                               ; preds = %24, %3
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* @O_NOATIME, align 8
  %34 = and i64 %32, %33
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %31
  %37 = load %struct.file*, %struct.file** %6, align 8
  %38 = getelementptr inbounds %struct.file, %struct.file* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @O_NOATIME, align 8
  %41 = and i64 %39, %40
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %36
  %44 = load %struct.inode*, %struct.inode** %8, align 8
  %45 = call i32 @is_owner_or_cap(%struct.inode* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* @EPERM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %184

50:                                               ; preds = %43
  br label %51

51:                                               ; preds = %50, %36, %31
  %52 = load i64, i64* @O_NONBLOCK, align 8
  %53 = load i64, i64* @O_NDELAY, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %51
  %56 = load i64, i64* %7, align 8
  %57 = load i64, i64* @O_NDELAY, align 8
  %58 = and i64 %56, %57
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load i64, i64* @O_NONBLOCK, align 8
  %62 = load i64, i64* %7, align 8
  %63 = or i64 %62, %61
  store i64 %63, i64* %7, align 8
  br label %64

64:                                               ; preds = %60, %55
  br label %65

65:                                               ; preds = %64, %51
  %66 = load i64, i64* %7, align 8
  %67 = load i64, i64* @O_DIRECT, align 8
  %68 = and i64 %66, %67
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %95

70:                                               ; preds = %65
  %71 = load %struct.file*, %struct.file** %6, align 8
  %72 = getelementptr inbounds %struct.file, %struct.file* %71, i32 0, i32 3
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  %74 = icmp ne %struct.TYPE_9__* %73, null
  br i1 %74, label %75, label %91

75:                                               ; preds = %70
  %76 = load %struct.file*, %struct.file** %6, align 8
  %77 = getelementptr inbounds %struct.file, %struct.file* %76, i32 0, i32 3
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = icmp ne %struct.TYPE_8__* %80, null
  br i1 %81, label %82, label %91

82:                                               ; preds = %75
  %83 = load %struct.file*, %struct.file** %6, align 8
  %84 = getelementptr inbounds %struct.file, %struct.file* %83, i32 0, i32 3
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %82, %75, %70
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %4, align 4
  br label %184

94:                                               ; preds = %82
  br label %95

95:                                               ; preds = %94, %65
  %96 = load %struct.file*, %struct.file** %6, align 8
  %97 = getelementptr inbounds %struct.file, %struct.file* %96, i32 0, i32 2
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %97, align 8
  %99 = icmp ne %struct.TYPE_10__* %98, null
  br i1 %99, label %100, label %115

100:                                              ; preds = %95
  %101 = load %struct.file*, %struct.file** %6, align 8
  %102 = getelementptr inbounds %struct.file, %struct.file* %101, i32 0, i32 2
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = load i32 (i64)*, i32 (i64)** %104, align 8
  %106 = icmp ne i32 (i64)* %105, null
  br i1 %106, label %107, label %115

107:                                              ; preds = %100
  %108 = load %struct.file*, %struct.file** %6, align 8
  %109 = getelementptr inbounds %struct.file, %struct.file* %108, i32 0, i32 2
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = load i32 (i64)*, i32 (i64)** %111, align 8
  %113 = load i64, i64* %7, align 8
  %114 = call i32 %112(i64 %113)
  store i32 %114, i32* %9, align 4
  br label %115

115:                                              ; preds = %107, %100, %95
  %116 = load i32, i32* %9, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %115
  %119 = load i32, i32* %9, align 4
  store i32 %119, i32* %4, align 4
  br label %184

120:                                              ; preds = %115
  %121 = load i64, i64* %7, align 8
  %122 = load %struct.file*, %struct.file** %6, align 8
  %123 = getelementptr inbounds %struct.file, %struct.file* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = xor i64 %121, %124
  %126 = load i64, i64* @FASYNC, align 8
  %127 = and i64 %125, %126
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %163

129:                                              ; preds = %120
  %130 = load %struct.file*, %struct.file** %6, align 8
  %131 = getelementptr inbounds %struct.file, %struct.file* %130, i32 0, i32 2
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %131, align 8
  %133 = icmp ne %struct.TYPE_10__* %132, null
  br i1 %133, label %134, label %163

134:                                              ; preds = %129
  %135 = load %struct.file*, %struct.file** %6, align 8
  %136 = getelementptr inbounds %struct.file, %struct.file* %135, i32 0, i32 2
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 1
  %139 = load i32 (i32, %struct.file*, i32)*, i32 (i32, %struct.file*, i32)** %138, align 8
  %140 = icmp ne i32 (i32, %struct.file*, i32)* %139, null
  br i1 %140, label %141, label %163

141:                                              ; preds = %134
  %142 = load %struct.file*, %struct.file** %6, align 8
  %143 = getelementptr inbounds %struct.file, %struct.file* %142, i32 0, i32 2
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 1
  %146 = load i32 (i32, %struct.file*, i32)*, i32 (i32, %struct.file*, i32)** %145, align 8
  %147 = load i32, i32* %5, align 4
  %148 = load %struct.file*, %struct.file** %6, align 8
  %149 = load i64, i64* %7, align 8
  %150 = load i64, i64* @FASYNC, align 8
  %151 = and i64 %149, %150
  %152 = icmp ne i64 %151, 0
  %153 = zext i1 %152 to i32
  %154 = call i32 %146(i32 %147, %struct.file* %148, i32 %153)
  store i32 %154, i32* %9, align 4
  %155 = load i32, i32* %9, align 4
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %141
  br label %182

158:                                              ; preds = %141
  %159 = load i32, i32* %9, align 4
  %160 = icmp sgt i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %158
  store i32 0, i32* %9, align 4
  br label %162

162:                                              ; preds = %161, %158
  br label %163

163:                                              ; preds = %162, %134, %129, %120
  %164 = load %struct.file*, %struct.file** %6, align 8
  %165 = getelementptr inbounds %struct.file, %struct.file* %164, i32 0, i32 1
  %166 = call i32 @spin_lock(i32* %165)
  %167 = load i64, i64* %7, align 8
  %168 = load i64, i64* @SETFL_MASK, align 8
  %169 = and i64 %167, %168
  %170 = load %struct.file*, %struct.file** %6, align 8
  %171 = getelementptr inbounds %struct.file, %struct.file* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @SETFL_MASK, align 8
  %174 = xor i64 %173, -1
  %175 = and i64 %172, %174
  %176 = or i64 %169, %175
  %177 = load %struct.file*, %struct.file** %6, align 8
  %178 = getelementptr inbounds %struct.file, %struct.file* %177, i32 0, i32 0
  store i64 %176, i64* %178, align 8
  %179 = load %struct.file*, %struct.file** %6, align 8
  %180 = getelementptr inbounds %struct.file, %struct.file* %179, i32 0, i32 1
  %181 = call i32 @spin_unlock(i32* %180)
  br label %182

182:                                              ; preds = %163, %157
  %183 = load i32, i32* %9, align 4
  store i32 %183, i32* %4, align 4
  br label %184

184:                                              ; preds = %182, %118, %91, %47, %28
  %185 = load i32, i32* %4, align 4
  ret i32 %185
}

declare dso_local i64 @IS_APPEND(%struct.inode*) #1

declare dso_local i32 @is_owner_or_cap(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
