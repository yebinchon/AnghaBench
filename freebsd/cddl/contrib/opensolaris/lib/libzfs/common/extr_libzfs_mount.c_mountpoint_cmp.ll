; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_mount.c_mountpoint_cmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_mount.c_mountpoint_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPATHLEN = common dso_local global i32 0, align 4
@ZFS_PROP_ZONED = common dso_local global i32 0, align 4
@ZFS_TYPE_FILESYSTEM = common dso_local global i64 0, align 8
@ZFS_PROP_MOUNTPOINT = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @mountpoint_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mountpoint_cmp(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = bitcast i8* %20 to i32**
  store i32** %21, i32*** %6, align 8
  %22 = load i32**, i32*** %6, align 8
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %7, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = bitcast i8* %24 to i32**
  store i32** %25, i32*** %8, align 8
  %26 = load i32**, i32*** %8, align 8
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %9, align 8
  %28 = load i32, i32* @MAXPATHLEN, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %10, align 8
  %31 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %11, align 8
  %32 = load i32, i32* @MAXPATHLEN, align 4
  %33 = zext i32 %32 to i64
  %34 = alloca i8, i64 %33, align 16
  store i64 %33, i64* %12, align 8
  store i8* %31, i8** %13, align 8
  store i8* %34, i8** %14, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* @ZFS_PROP_ZONED, align 4
  %37 = call i64 @zfs_prop_get_int(i32* %35, i32 %36)
  store i64 %37, i64* %17, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = load i32, i32* @ZFS_PROP_ZONED, align 4
  %40 = call i64 @zfs_prop_get_int(i32* %38, i32 %39)
  store i64 %40, i64* %18, align 8
  %41 = load i64, i64* %17, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %2
  %44 = load i64, i64* %18, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  store i32 1, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %182

47:                                               ; preds = %43, %2
  %48 = load i64, i64* %17, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %47
  %51 = load i64, i64* %18, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %182

54:                                               ; preds = %50, %47
  %55 = load i32*, i32** %7, align 8
  %56 = call i64 @zfs_get_type(i32* %55)
  %57 = load i64, i64* @ZFS_TYPE_FILESYSTEM, align 8
  %58 = icmp eq i64 %56, %57
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* %15, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %54
  %63 = load i32*, i32** %7, align 8
  %64 = load i32, i32* @ZFS_PROP_MOUNTPOINT, align 4
  %65 = trunc i64 %29 to i32
  %66 = load i32, i32* @B_FALSE, align 4
  %67 = call i64 @zfs_prop_get(i32* %63, i32 %64, i8* %31, i32 %65, i32* null, i32* null, i32 0, i32 %66)
  %68 = icmp eq i64 %67, 0
  %69 = zext i1 %68 to i32
  %70 = call i32 @verify(i32 %69)
  br label %71

71:                                               ; preds = %62, %54
  %72 = load i32*, i32** %9, align 8
  %73 = call i64 @zfs_get_type(i32* %72)
  %74 = load i64, i64* @ZFS_TYPE_FILESYSTEM, align 8
  %75 = icmp eq i64 %73, %74
  %76 = zext i1 %75 to i32
  store i32 %76, i32* %16, align 4
  %77 = load i32, i32* %16, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %71
  %80 = load i32*, i32** %9, align 8
  %81 = load i32, i32* @ZFS_PROP_MOUNTPOINT, align 4
  %82 = trunc i64 %33 to i32
  %83 = load i32, i32* @B_FALSE, align 4
  %84 = call i64 @zfs_prop_get(i32* %80, i32 %81, i8* %34, i32 %82, i32* null, i32* null, i32 0, i32 %83)
  %85 = icmp eq i64 %84, 0
  %86 = zext i1 %85 to i32
  %87 = call i32 @verify(i32 %86)
  br label %88

88:                                               ; preds = %79, %71
  %89 = load i32, i32* %15, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %168

91:                                               ; preds = %88
  %92 = load i32, i32* %16, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %168

94:                                               ; preds = %91
  br label %95

95:                                               ; preds = %110, %94
  %96 = load i8*, i8** %13, align 8
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %95
  %101 = load i8*, i8** %13, align 8
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = load i8*, i8** %14, align 8
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp eq i32 %103, %106
  br label %108

108:                                              ; preds = %100, %95
  %109 = phi i1 [ false, %95 ], [ %107, %100 ]
  br i1 %109, label %110, label %115

110:                                              ; preds = %108
  %111 = load i8*, i8** %13, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %13, align 8
  %113 = load i8*, i8** %14, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %14, align 8
  br label %95

115:                                              ; preds = %108
  %116 = load i8*, i8** %13, align 8
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = load i8*, i8** %14, align 8
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp eq i32 %118, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %115
  store i32 0, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %182

124:                                              ; preds = %115
  %125 = load i8*, i8** %13, align 8
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %124
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %182

130:                                              ; preds = %124
  %131 = load i8*, i8** %14, align 8
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %130
  store i32 1, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %182

136:                                              ; preds = %130
  %137 = load i8*, i8** %13, align 8
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  %140 = icmp eq i32 %139, 47
  br i1 %140, label %141, label %142

141:                                              ; preds = %136
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %182

142:                                              ; preds = %136
  %143 = load i8*, i8** %14, align 8
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = icmp eq i32 %145, 47
  br i1 %146, label %147, label %148

147:                                              ; preds = %142
  store i32 1, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %182

148:                                              ; preds = %142
  %149 = load i8*, i8** %13, align 8
  %150 = load i8, i8* %149, align 1
  %151 = sext i8 %150 to i32
  %152 = load i8*, i8** %14, align 8
  %153 = load i8, i8* %152, align 1
  %154 = sext i8 %153 to i32
  %155 = icmp slt i32 %151, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %148
  br label %166

157:                                              ; preds = %148
  %158 = load i8*, i8** %13, align 8
  %159 = load i8, i8* %158, align 1
  %160 = sext i8 %159 to i32
  %161 = load i8*, i8** %14, align 8
  %162 = load i8, i8* %161, align 1
  %163 = sext i8 %162 to i32
  %164 = icmp sgt i32 %160, %163
  %165 = zext i1 %164 to i32
  br label %166

166:                                              ; preds = %157, %156
  %167 = phi i32 [ -1, %156 ], [ %165, %157 ]
  store i32 %167, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %182

168:                                              ; preds = %91, %88
  %169 = load i32, i32* %15, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %168
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %182

172:                                              ; preds = %168
  %173 = load i32, i32* %16, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %172
  store i32 1, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %182

176:                                              ; preds = %172
  %177 = load i32*, i32** %7, align 8
  %178 = call i32 @zfs_get_name(i32* %177)
  %179 = load i32*, i32** %9, align 8
  %180 = call i32 @zfs_get_name(i32* %179)
  %181 = call i32 @strcmp(i32 %178, i32 %180)
  store i32 %181, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %182

182:                                              ; preds = %176, %175, %171, %166, %147, %141, %135, %129, %123, %53, %46
  %183 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %183)
  %184 = load i32, i32* %3, align 4
  ret i32 %184
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @zfs_prop_get_int(i32*, i32) #2

declare dso_local i64 @zfs_get_type(i32*) #2

declare dso_local i32 @verify(i32) #2

declare dso_local i64 @zfs_prop_get(i32*, i32, i8*, i32, i32*, i32*, i32, i32) #2

declare dso_local i32 @strcmp(i32, i32) #2

declare dso_local i32 @zfs_get_name(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
