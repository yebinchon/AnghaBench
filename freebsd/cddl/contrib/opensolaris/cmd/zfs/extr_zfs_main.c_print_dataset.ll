; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zfs/extr_zfs_main.c_print_dataset.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zfs/extr_zfs_main.c_print_dataset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i8*, %struct.TYPE_4__*, i32 }

@B_TRUE = common dso_local global i64 0, align 8
@ZFS_MAXPROPLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@B_FALSE = common dso_local global i64 0, align 8
@ZFS_PROP_NAME = common dso_local global i64 0, align 8
@ZPROP_INVAL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@ZPROP_VALUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%*s\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%-*s\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_5__*)* @print_dataset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_dataset(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %5, align 8
  %16 = load i64, i64* @B_TRUE, align 8
  store i64 %16, i64* %6, align 8
  %17 = load i32, i32* @ZFS_MAXPROPLEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %7, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %8, align 8
  %21 = load i32*, i32** %3, align 8
  %22 = call i32* @zfs_get_user_props(i32* %21)
  store i32* %22, i32** %9, align 8
  br label %23

23:                                               ; preds = %175, %2
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %25 = icmp ne %struct.TYPE_4__* %24, null
  br i1 %25, label %26, label %179

26:                                               ; preds = %23
  %27 = load i64, i64* %6, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %26
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %38

36:                                               ; preds = %29
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %34
  br label %41

39:                                               ; preds = %26
  %40 = load i64, i64* @B_FALSE, align 8
  store i64 %40, i64* %6, align 8
  br label %41

41:                                               ; preds = %39, %38
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @ZFS_PROP_NAME, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %41
  %48 = load i32*, i32** %3, align 8
  %49 = call i32 @zfs_get_name(i32* %48)
  %50 = trunc i64 %18 to i32
  %51 = call i32 @strlcpy(i8* %20, i32 %49, i32 %50)
  store i8* %20, i8** %11, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i64 @zfs_prop_align_right(i64 %54)
  store i64 %55, i64* %12, align 8
  br label %142

56:                                               ; preds = %41
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @ZPROP_INVAL, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %80

62:                                               ; preds = %56
  %63 = load i32*, i32** %3, align 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = trunc i64 %18 to i32
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i64 @zfs_prop_get(i32* %63, i64 %66, i8* %20, i32 %67, i32* null, i32* null, i32 0, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %62
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  br label %75

74:                                               ; preds = %62
  store i8* %20, i8** %11, align 8
  br label %75

75:                                               ; preds = %74, %73
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i64 @zfs_prop_align_right(i64 %78)
  store i64 %79, i64* %12, align 8
  br label %141

80:                                               ; preds = %56
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = call i64 @zfs_prop_userquota(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %101

86:                                               ; preds = %80
  %87 = load i32*, i32** %3, align 8
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = trunc i64 %18 to i32
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i64 @zfs_prop_get_userquota(i32* %87, i32 %90, i8* %20, i32 %91, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %86
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  br label %99

98:                                               ; preds = %86
  store i8* %20, i8** %11, align 8
  br label %99

99:                                               ; preds = %98, %97
  %100 = load i64, i64* @B_TRUE, align 8
  store i64 %100, i64* %12, align 8
  br label %140

101:                                              ; preds = %80
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = call i64 @zfs_prop_written(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %122

107:                                              ; preds = %101
  %108 = load i32*, i32** %3, align 8
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = trunc i64 %18 to i32
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = call i64 @zfs_prop_get_written(i32* %108, i32 %111, i8* %20, i32 %112, i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %107
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  br label %120

119:                                              ; preds = %107
  store i8* %20, i8** %11, align 8
  br label %120

120:                                              ; preds = %119, %118
  %121 = load i64, i64* @B_TRUE, align 8
  store i64 %121, i64* %12, align 8
  br label %139

122:                                              ; preds = %101
  %123 = load i32*, i32** %9, align 8
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = call i64 @nvlist_lookup_nvlist(i32* %123, i32 %126, i32** %10)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %122
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  br label %137

130:                                              ; preds = %122
  %131 = load i32*, i32** %10, align 8
  %132 = load i32, i32* @ZPROP_VALUE, align 4
  %133 = call i64 @nvlist_lookup_string(i32* %131, i32 %132, i8** %11)
  %134 = icmp eq i64 %133, 0
  %135 = zext i1 %134 to i32
  %136 = call i32 @verify(i32 %135)
  br label %137

137:                                              ; preds = %130, %129
  %138 = load i64, i64* @B_FALSE, align 8
  store i64 %138, i64* %12, align 8
  br label %139

139:                                              ; preds = %137, %120
  br label %140

140:                                              ; preds = %139, %99
  br label %141

141:                                              ; preds = %140, %75
  br label %142

142:                                              ; preds = %141, %47
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %155, label %147

147:                                              ; preds = %142
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 2
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %149, align 8
  %151 = icmp eq %struct.TYPE_4__* %150, null
  br i1 %151, label %152, label %158

152:                                              ; preds = %147
  %153 = load i64, i64* %12, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %158, label %155

155:                                              ; preds = %152, %142
  %156 = load i8*, i8** %11, align 8
  %157 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %156)
  br label %174

158:                                              ; preds = %152, %147
  %159 = load i64, i64* %12, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %158
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 1
  %164 = load i8*, i8** %163, align 8
  %165 = load i8*, i8** %11, align 8
  %166 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %164, i8* %165)
  br label %173

167:                                              ; preds = %158
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 1
  %170 = load i8*, i8** %169, align 8
  %171 = load i8*, i8** %11, align 8
  %172 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %170, i8* %171)
  br label %173

173:                                              ; preds = %167, %161
  br label %174

174:                                              ; preds = %173, %155
  br label %175

175:                                              ; preds = %174
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 2
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %177, align 8
  store %struct.TYPE_4__* %178, %struct.TYPE_4__** %5, align 8
  br label %23

179:                                              ; preds = %23
  %180 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %181 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %181)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @zfs_get_user_props(i32*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @strlcpy(i8*, i32, i32) #2

declare dso_local i32 @zfs_get_name(i32*) #2

declare dso_local i64 @zfs_prop_align_right(i64) #2

declare dso_local i64 @zfs_prop_get(i32*, i64, i8*, i32, i32*, i32*, i32, i32) #2

declare dso_local i64 @zfs_prop_userquota(i32) #2

declare dso_local i64 @zfs_prop_get_userquota(i32*, i32, i8*, i32, i32) #2

declare dso_local i64 @zfs_prop_written(i32) #2

declare dso_local i64 @zfs_prop_get_written(i32*, i32, i8*, i32, i32) #2

declare dso_local i64 @nvlist_lookup_nvlist(i32*, i32, i32**) #2

declare dso_local i32 @verify(i32) #2

declare dso_local i64 @nvlist_lookup_string(i32*, i32, i8**) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
