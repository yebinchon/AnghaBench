; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zpool/extr_zpool_vdev.c_is_device_in_use.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zpool/extr_zpool_vdev.c_is_device_in_use.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPATHLEN = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_TYPE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_CHILDREN = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_PATH = common dso_local global i32 0, align 4
@VDEV_TYPE_DISK = common dso_local global i32 0, align 4
@VDEV_TYPE_FILE = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_SPARES = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_L2CACHE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_WHOLE_DISK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32, i32)* @is_device_in_use to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_device_in_use(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32**, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %17, align 4
  %23 = load i32, i32* @MAXPATHLEN, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %18, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %19, align 8
  %27 = load i32, i32* @B_FALSE, align 4
  store i32 %27, i32* %21, align 4
  %28 = load i32*, i32** %8, align 8
  %29 = load i32, i32* @ZPOOL_CONFIG_TYPE, align 4
  %30 = call i64 @nvlist_lookup_string(i32* %28, i32 %29, i8** %15)
  %31 = icmp eq i64 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @verify(i32 %32)
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* @ZPOOL_CONFIG_CHILDREN, align 4
  %36 = call i64 @nvlist_lookup_nvlist_array(i32* %34, i32 %35, i32*** %12, i64* %14)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %82

38:                                               ; preds = %5
  %39 = load i32*, i32** %8, align 8
  %40 = load i32, i32* @ZPOOL_CONFIG_PATH, align 4
  %41 = call i64 @nvlist_lookup_string(i32* %39, i32 %40, i8** %16)
  %42 = icmp eq i64 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i32 @verify(i32 %43)
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %38
  %48 = load i8*, i8** %16, align 8
  %49 = trunc i64 %24 to i32
  %50 = call i32 @strlcpy(i8* %26, i8* %48, i32 %49)
  %51 = load i32*, i32** %7, align 8
  %52 = call i64 @is_spare(i32* %51, i8* %26)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i32, i32* @B_FALSE, align 4
  store i32 %55, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %162

56:                                               ; preds = %47
  br label %57

57:                                               ; preds = %56, %38
  %58 = load i8*, i8** %15, align 8
  %59 = load i32, i32* @VDEV_TYPE_DISK, align 4
  %60 = call i64 @strcmp(i8* %58, i32 %59)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load i8*, i8** %16, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @check_device(i8* %63, i32 %64, i32 %65)
  store i32 %66, i32* %17, align 4
  br label %78

67:                                               ; preds = %57
  %68 = load i8*, i8** %15, align 8
  %69 = load i32, i32* @VDEV_TYPE_FILE, align 4
  %70 = call i64 @strcmp(i8* %68, i32 %69)
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load i8*, i8** %16, align 8
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @check_file(i8* %73, i32 %74, i32 %75)
  store i32 %76, i32* %17, align 4
  br label %77

77:                                               ; preds = %72, %67
  br label %78

78:                                               ; preds = %77, %62
  %79 = load i32, i32* %17, align 4
  %80 = icmp ne i32 %79, 0
  %81 = zext i1 %80 to i32
  store i32 %81, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %162

82:                                               ; preds = %5
  store i64 0, i64* %13, align 8
  br label %83

83:                                               ; preds = %101, %82
  %84 = load i64, i64* %13, align 8
  %85 = load i64, i64* %14, align 8
  %86 = icmp ult i64 %84, %85
  br i1 %86, label %87, label %104

87:                                               ; preds = %83
  %88 = load i32*, i32** %7, align 8
  %89 = load i32**, i32*** %12, align 8
  %90 = load i64, i64* %13, align 8
  %91 = getelementptr inbounds i32*, i32** %89, i64 %90
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* @B_FALSE, align 4
  %96 = call i32 @is_device_in_use(i32* %88, i32* %92, i32 %93, i32 %94, i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %87
  %99 = load i32, i32* @B_TRUE, align 4
  store i32 %99, i32* %21, align 4
  br label %100

100:                                              ; preds = %98, %87
  br label %101

101:                                              ; preds = %100
  %102 = load i64, i64* %13, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* %13, align 8
  br label %83

104:                                              ; preds = %83
  %105 = load i32*, i32** %8, align 8
  %106 = load i32, i32* @ZPOOL_CONFIG_SPARES, align 4
  %107 = call i64 @nvlist_lookup_nvlist_array(i32* %105, i32 %106, i32*** %12, i64* %14)
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %132

109:                                              ; preds = %104
  store i64 0, i64* %13, align 8
  br label %110

110:                                              ; preds = %128, %109
  %111 = load i64, i64* %13, align 8
  %112 = load i64, i64* %14, align 8
  %113 = icmp ult i64 %111, %112
  br i1 %113, label %114, label %131

114:                                              ; preds = %110
  %115 = load i32*, i32** %7, align 8
  %116 = load i32**, i32*** %12, align 8
  %117 = load i64, i64* %13, align 8
  %118 = getelementptr inbounds i32*, i32** %116, i64 %117
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* @B_TRUE, align 4
  %123 = call i32 @is_device_in_use(i32* %115, i32* %119, i32 %120, i32 %121, i32 %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %114
  %126 = load i32, i32* @B_TRUE, align 4
  store i32 %126, i32* %21, align 4
  br label %127

127:                                              ; preds = %125, %114
  br label %128

128:                                              ; preds = %127
  %129 = load i64, i64* %13, align 8
  %130 = add i64 %129, 1
  store i64 %130, i64* %13, align 8
  br label %110

131:                                              ; preds = %110
  br label %132

132:                                              ; preds = %131, %104
  %133 = load i32*, i32** %8, align 8
  %134 = load i32, i32* @ZPOOL_CONFIG_L2CACHE, align 4
  %135 = call i64 @nvlist_lookup_nvlist_array(i32* %133, i32 %134, i32*** %12, i64* %14)
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %137, label %160

137:                                              ; preds = %132
  store i64 0, i64* %13, align 8
  br label %138

138:                                              ; preds = %156, %137
  %139 = load i64, i64* %13, align 8
  %140 = load i64, i64* %14, align 8
  %141 = icmp ult i64 %139, %140
  br i1 %141, label %142, label %159

142:                                              ; preds = %138
  %143 = load i32*, i32** %7, align 8
  %144 = load i32**, i32*** %12, align 8
  %145 = load i64, i64* %13, align 8
  %146 = getelementptr inbounds i32*, i32** %144, i64 %145
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %9, align 4
  %149 = load i32, i32* %10, align 4
  %150 = load i32, i32* @B_FALSE, align 4
  %151 = call i32 @is_device_in_use(i32* %143, i32* %147, i32 %148, i32 %149, i32 %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %142
  %154 = load i32, i32* @B_TRUE, align 4
  store i32 %154, i32* %21, align 4
  br label %155

155:                                              ; preds = %153, %142
  br label %156

156:                                              ; preds = %155
  %157 = load i64, i64* %13, align 8
  %158 = add i64 %157, 1
  store i64 %158, i64* %13, align 8
  br label %138

159:                                              ; preds = %138
  br label %160

160:                                              ; preds = %159, %132
  %161 = load i32, i32* %21, align 4
  store i32 %161, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %162

162:                                              ; preds = %160, %78, %54
  %163 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %163)
  %164 = load i32, i32* %6, align 4
  ret i32 %164
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @verify(i32) #2

declare dso_local i64 @nvlist_lookup_string(i32*, i32, i8**) #2

declare dso_local i64 @nvlist_lookup_nvlist_array(i32*, i32, i32***, i64*) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i64 @is_spare(i32*, i8*) #2

declare dso_local i64 @strcmp(i8*, i32) #2

declare dso_local i32 @check_device(i8*, i32, i32) #2

declare dso_local i32 @check_file(i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
