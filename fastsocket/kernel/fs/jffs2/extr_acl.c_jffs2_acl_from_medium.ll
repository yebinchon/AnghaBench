; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_acl.c_jffs2_acl_from_medium.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_acl.c_jffs2_acl_from_medium.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.posix_acl = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i8*, i8* }
%struct.jffs2_acl_header = type { i32 }
%struct.jffs2_acl_entry = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@JFFS2_ACL_VERSION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Invalid ACL version. (=%u)\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ACL_UNDEFINED_ID = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.posix_acl* (i8*, i64)* @jffs2_acl_from_medium to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.posix_acl* @jffs2_acl_from_medium(i8* %0, i64 %1) #0 {
  %3 = alloca %struct.posix_acl*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.jffs2_acl_header*, align 8
  %8 = alloca %struct.jffs2_acl_entry*, align 8
  %9 = alloca %struct.posix_acl*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = load i64, i64* %5, align 8
  %15 = getelementptr i8, i8* %13, i64 %14
  store i8* %15, i8** %6, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = bitcast i8* %16 to %struct.jffs2_acl_header*
  store %struct.jffs2_acl_header* %17, %struct.jffs2_acl_header** %7, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store %struct.posix_acl* null, %struct.posix_acl** %3, align 8
  br label %161

21:                                               ; preds = %2
  %22 = load i64, i64* %5, align 8
  %23 = icmp ult i64 %22, 4
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  %27 = call %struct.posix_acl* @ERR_PTR(i32 %26)
  store %struct.posix_acl* %27, %struct.posix_acl** %3, align 8
  br label %161

28:                                               ; preds = %21
  %29 = load %struct.jffs2_acl_header*, %struct.jffs2_acl_header** %7, align 8
  %30 = getelementptr inbounds %struct.jffs2_acl_header, %struct.jffs2_acl_header* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @je32_to_cpu(i32 %31)
  %33 = ptrtoint i8* %32 to i64
  store i64 %33, i64* %10, align 8
  %34 = load i64, i64* %10, align 8
  %35 = load i64, i64* @JFFS2_ACL_VERSION, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %28
  %38 = load i64, i64* %10, align 8
  %39 = call i32 @JFFS2_WARNING(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %38)
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  %42 = call %struct.posix_acl* @ERR_PTR(i32 %41)
  store %struct.posix_acl* %42, %struct.posix_acl** %3, align 8
  br label %161

43:                                               ; preds = %28
  %44 = load i8*, i8** %4, align 8
  %45 = getelementptr i8, i8* %44, i64 4
  store i8* %45, i8** %4, align 8
  %46 = load i64, i64* %5, align 8
  %47 = call i32 @jffs2_acl_count(i64 %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %43
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  %53 = call %struct.posix_acl* @ERR_PTR(i32 %52)
  store %struct.posix_acl* %53, %struct.posix_acl** %3, align 8
  br label %161

54:                                               ; preds = %43
  %55 = load i32, i32* %12, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store %struct.posix_acl* null, %struct.posix_acl** %3, align 8
  br label %161

58:                                               ; preds = %54
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call %struct.posix_acl* @posix_acl_alloc(i32 %59, i32 %60)
  store %struct.posix_acl* %61, %struct.posix_acl** %9, align 8
  %62 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %63 = icmp ne %struct.posix_acl* %62, null
  br i1 %63, label %68, label %64

64:                                               ; preds = %58
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  %67 = call %struct.posix_acl* @ERR_PTR(i32 %66)
  store %struct.posix_acl* %67, %struct.posix_acl** %3, align 8
  br label %161

68:                                               ; preds = %58
  store i32 0, i32* %11, align 4
  br label %69

69:                                               ; preds = %145, %68
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %12, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %148

73:                                               ; preds = %69
  %74 = load i8*, i8** %4, align 8
  %75 = bitcast i8* %74 to %struct.jffs2_acl_entry*
  store %struct.jffs2_acl_entry* %75, %struct.jffs2_acl_entry** %8, align 8
  %76 = load i8*, i8** %4, align 8
  %77 = getelementptr i8, i8* %76, i64 4
  %78 = load i8*, i8** %6, align 8
  %79 = icmp ugt i8* %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  br label %155

81:                                               ; preds = %73
  %82 = load %struct.jffs2_acl_entry*, %struct.jffs2_acl_entry** %8, align 8
  %83 = getelementptr inbounds %struct.jffs2_acl_entry, %struct.jffs2_acl_entry* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = call i8* @je16_to_cpu(i32 %84)
  %86 = ptrtoint i8* %85 to i32
  %87 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %88 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %87, i32 0, i32 0
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = load i32, i32* %11, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  store i32 %86, i32* %93, align 8
  %94 = load %struct.jffs2_acl_entry*, %struct.jffs2_acl_entry** %8, align 8
  %95 = getelementptr inbounds %struct.jffs2_acl_entry, %struct.jffs2_acl_entry* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i8* @je16_to_cpu(i32 %96)
  %98 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %99 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %98, i32 0, i32 0
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = load i32, i32* %11, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 2
  store i8* %97, i8** %104, align 8
  %105 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %106 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %105, i32 0, i32 0
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = load i32, i32* %11, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  switch i32 %112, label %143 [
    i32 128, label %113
    i32 132, label %113
    i32 131, label %113
    i32 130, label %113
    i32 129, label %124
    i32 133, label %124
  ]

113:                                              ; preds = %81, %81, %81, %81
  %114 = load i8*, i8** %4, align 8
  %115 = getelementptr i8, i8* %114, i64 4
  store i8* %115, i8** %4, align 8
  %116 = load i8*, i8** @ACL_UNDEFINED_ID, align 8
  %117 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %118 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %117, i32 0, i32 0
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = load i32, i32* %11, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 1
  store i8* %116, i8** %123, align 8
  br label %144

124:                                              ; preds = %81, %81
  %125 = load i8*, i8** %4, align 8
  %126 = getelementptr i8, i8* %125, i64 12
  store i8* %126, i8** %4, align 8
  %127 = load i8*, i8** %4, align 8
  %128 = load i8*, i8** %6, align 8
  %129 = icmp ugt i8* %127, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %124
  br label %155

131:                                              ; preds = %124
  %132 = load %struct.jffs2_acl_entry*, %struct.jffs2_acl_entry** %8, align 8
  %133 = getelementptr inbounds %struct.jffs2_acl_entry, %struct.jffs2_acl_entry* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i8* @je32_to_cpu(i32 %134)
  %136 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %137 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %136, i32 0, i32 0
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** %137, align 8
  %139 = load i32, i32* %11, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 1
  store i8* %135, i8** %142, align 8
  br label %144

143:                                              ; preds = %81
  br label %155

144:                                              ; preds = %131, %113
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %11, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %11, align 4
  br label %69

148:                                              ; preds = %69
  %149 = load i8*, i8** %4, align 8
  %150 = load i8*, i8** %6, align 8
  %151 = icmp ne i8* %149, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %148
  br label %155

153:                                              ; preds = %148
  %154 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  store %struct.posix_acl* %154, %struct.posix_acl** %3, align 8
  br label %161

155:                                              ; preds = %152, %143, %130, %80
  %156 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %157 = call i32 @posix_acl_release(%struct.posix_acl* %156)
  %158 = load i32, i32* @EINVAL, align 4
  %159 = sub nsw i32 0, %158
  %160 = call %struct.posix_acl* @ERR_PTR(i32 %159)
  store %struct.posix_acl* %160, %struct.posix_acl** %3, align 8
  br label %161

161:                                              ; preds = %155, %153, %64, %57, %50, %37, %24, %20
  %162 = load %struct.posix_acl*, %struct.posix_acl** %3, align 8
  ret %struct.posix_acl* %162
}

declare dso_local %struct.posix_acl* @ERR_PTR(i32) #1

declare dso_local i8* @je32_to_cpu(i32) #1

declare dso_local i32 @JFFS2_WARNING(i8*, i64) #1

declare dso_local i32 @jffs2_acl_count(i64) #1

declare dso_local %struct.posix_acl* @posix_acl_alloc(i32, i32) #1

declare dso_local i8* @je16_to_cpu(i32) #1

declare dso_local i32 @posix_acl_release(%struct.posix_acl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
