; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/pohmelfs/extr_config.c_pohmelfs_copy_crypto.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/pohmelfs/extr_config.c_pohmelfs_copy_crypto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pohmelfs_sb = type { i8*, i8*, i8*, i64, i8*, i64, i32, i32, i32 }
%struct.pohmelfs_config_group = type { i64, i32, i64, i32, i32, i64, i32, i64 }

@ENOENT = common dso_local global i32 0, align 4
@pohmelfs_config_lock = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pohmelfs_copy_crypto(%struct.pohmelfs_sb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pohmelfs_sb*, align 8
  %4 = alloca %struct.pohmelfs_config_group*, align 8
  %5 = alloca i32, align 4
  store %struct.pohmelfs_sb* %0, %struct.pohmelfs_sb** %3, align 8
  %6 = load i32, i32* @ENOENT, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %5, align 4
  %8 = call i32 @mutex_lock(i32* @pohmelfs_config_lock)
  %9 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %3, align 8
  %10 = getelementptr inbounds %struct.pohmelfs_sb, %struct.pohmelfs_sb* %9, i32 0, i32 8
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.pohmelfs_config_group* @pohmelfs_find_config_group(i32 %11)
  store %struct.pohmelfs_config_group* %12, %struct.pohmelfs_config_group** %4, align 8
  %13 = load %struct.pohmelfs_config_group*, %struct.pohmelfs_config_group** %4, align 8
  %14 = icmp ne %struct.pohmelfs_config_group* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %151

16:                                               ; preds = %1
  %17 = load %struct.pohmelfs_config_group*, %struct.pohmelfs_config_group** %4, align 8
  %18 = getelementptr inbounds %struct.pohmelfs_config_group, %struct.pohmelfs_config_group* %17, i32 0, i32 7
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %42

21:                                               ; preds = %16
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  %24 = load %struct.pohmelfs_config_group*, %struct.pohmelfs_config_group** %4, align 8
  %25 = getelementptr inbounds %struct.pohmelfs_config_group, %struct.pohmelfs_config_group* %24, i32 0, i32 7
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i8* @kstrdup(i64 %26, i32 %27)
  %29 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %3, align 8
  %30 = getelementptr inbounds %struct.pohmelfs_sb, %struct.pohmelfs_sb* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  %31 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %3, align 8
  %32 = getelementptr inbounds %struct.pohmelfs_sb, %struct.pohmelfs_sb* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %21
  br label %151

36:                                               ; preds = %21
  %37 = load %struct.pohmelfs_config_group*, %struct.pohmelfs_config_group** %4, align 8
  %38 = getelementptr inbounds %struct.pohmelfs_config_group, %struct.pohmelfs_config_group* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %3, align 8
  %41 = getelementptr inbounds %struct.pohmelfs_sb, %struct.pohmelfs_sb* %40, i32 0, i32 7
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %36, %16
  %43 = load %struct.pohmelfs_config_group*, %struct.pohmelfs_config_group** %4, align 8
  %44 = getelementptr inbounds %struct.pohmelfs_config_group, %struct.pohmelfs_config_group* %43, i32 0, i32 5
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %66

47:                                               ; preds = %42
  %48 = load %struct.pohmelfs_config_group*, %struct.pohmelfs_config_group** %4, align 8
  %49 = getelementptr inbounds %struct.pohmelfs_config_group, %struct.pohmelfs_config_group* %48, i32 0, i32 5
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call i8* @kstrdup(i64 %50, i32 %51)
  %53 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %3, align 8
  %54 = getelementptr inbounds %struct.pohmelfs_sb, %struct.pohmelfs_sb* %53, i32 0, i32 1
  store i8* %52, i8** %54, align 8
  %55 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %3, align 8
  %56 = getelementptr inbounds %struct.pohmelfs_sb, %struct.pohmelfs_sb* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %47
  br label %146

60:                                               ; preds = %47
  %61 = load %struct.pohmelfs_config_group*, %struct.pohmelfs_config_group** %4, align 8
  %62 = getelementptr inbounds %struct.pohmelfs_config_group, %struct.pohmelfs_config_group* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %3, align 8
  %65 = getelementptr inbounds %struct.pohmelfs_sb, %struct.pohmelfs_sb* %64, i32 0, i32 6
  store i32 %63, i32* %65, align 8
  br label %66

66:                                               ; preds = %60, %42
  %67 = load %struct.pohmelfs_config_group*, %struct.pohmelfs_config_group** %4, align 8
  %68 = getelementptr inbounds %struct.pohmelfs_config_group, %struct.pohmelfs_config_group* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %100

71:                                               ; preds = %66
  %72 = load %struct.pohmelfs_config_group*, %struct.pohmelfs_config_group** %4, align 8
  %73 = getelementptr inbounds %struct.pohmelfs_config_group, %struct.pohmelfs_config_group* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* @GFP_KERNEL, align 4
  %76 = call i8* @kmalloc(i64 %74, i32 %75)
  %77 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %3, align 8
  %78 = getelementptr inbounds %struct.pohmelfs_sb, %struct.pohmelfs_sb* %77, i32 0, i32 2
  store i8* %76, i8** %78, align 8
  %79 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %3, align 8
  %80 = getelementptr inbounds %struct.pohmelfs_sb, %struct.pohmelfs_sb* %79, i32 0, i32 2
  %81 = load i8*, i8** %80, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %71
  br label %141

84:                                               ; preds = %71
  %85 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %3, align 8
  %86 = getelementptr inbounds %struct.pohmelfs_sb, %struct.pohmelfs_sb* %85, i32 0, i32 2
  %87 = load i8*, i8** %86, align 8
  %88 = load %struct.pohmelfs_config_group*, %struct.pohmelfs_config_group** %4, align 8
  %89 = getelementptr inbounds %struct.pohmelfs_config_group, %struct.pohmelfs_config_group* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.pohmelfs_config_group*, %struct.pohmelfs_config_group** %4, align 8
  %92 = getelementptr inbounds %struct.pohmelfs_config_group, %struct.pohmelfs_config_group* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @memcpy(i8* %87, i32 %90, i64 %93)
  %95 = load %struct.pohmelfs_config_group*, %struct.pohmelfs_config_group** %4, align 8
  %96 = getelementptr inbounds %struct.pohmelfs_config_group, %struct.pohmelfs_config_group* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %3, align 8
  %99 = getelementptr inbounds %struct.pohmelfs_sb, %struct.pohmelfs_sb* %98, i32 0, i32 5
  store i64 %97, i64* %99, align 8
  br label %100

100:                                              ; preds = %84, %66
  %101 = load %struct.pohmelfs_config_group*, %struct.pohmelfs_config_group** %4, align 8
  %102 = getelementptr inbounds %struct.pohmelfs_config_group, %struct.pohmelfs_config_group* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %134

105:                                              ; preds = %100
  %106 = load %struct.pohmelfs_config_group*, %struct.pohmelfs_config_group** %4, align 8
  %107 = getelementptr inbounds %struct.pohmelfs_config_group, %struct.pohmelfs_config_group* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i32, i32* @GFP_KERNEL, align 4
  %110 = call i8* @kmalloc(i64 %108, i32 %109)
  %111 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %3, align 8
  %112 = getelementptr inbounds %struct.pohmelfs_sb, %struct.pohmelfs_sb* %111, i32 0, i32 4
  store i8* %110, i8** %112, align 8
  %113 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %3, align 8
  %114 = getelementptr inbounds %struct.pohmelfs_sb, %struct.pohmelfs_sb* %113, i32 0, i32 4
  %115 = load i8*, i8** %114, align 8
  %116 = icmp ne i8* %115, null
  br i1 %116, label %118, label %117

117:                                              ; preds = %105
  br label %136

118:                                              ; preds = %105
  %119 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %3, align 8
  %120 = getelementptr inbounds %struct.pohmelfs_sb, %struct.pohmelfs_sb* %119, i32 0, i32 4
  %121 = load i8*, i8** %120, align 8
  %122 = load %struct.pohmelfs_config_group*, %struct.pohmelfs_config_group** %4, align 8
  %123 = getelementptr inbounds %struct.pohmelfs_config_group, %struct.pohmelfs_config_group* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.pohmelfs_config_group*, %struct.pohmelfs_config_group** %4, align 8
  %126 = getelementptr inbounds %struct.pohmelfs_config_group, %struct.pohmelfs_config_group* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @memcpy(i8* %121, i32 %124, i64 %127)
  %129 = load %struct.pohmelfs_config_group*, %struct.pohmelfs_config_group** %4, align 8
  %130 = getelementptr inbounds %struct.pohmelfs_config_group, %struct.pohmelfs_config_group* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %3, align 8
  %133 = getelementptr inbounds %struct.pohmelfs_sb, %struct.pohmelfs_sb* %132, i32 0, i32 3
  store i64 %131, i64* %133, align 8
  br label %134

134:                                              ; preds = %118, %100
  %135 = call i32 @mutex_unlock(i32* @pohmelfs_config_lock)
  store i32 0, i32* %2, align 4
  br label %154

136:                                              ; preds = %117
  %137 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %3, align 8
  %138 = getelementptr inbounds %struct.pohmelfs_sb, %struct.pohmelfs_sb* %137, i32 0, i32 2
  %139 = load i8*, i8** %138, align 8
  %140 = call i32 @kfree(i8* %139)
  br label %141

141:                                              ; preds = %136, %83
  %142 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %3, align 8
  %143 = getelementptr inbounds %struct.pohmelfs_sb, %struct.pohmelfs_sb* %142, i32 0, i32 1
  %144 = load i8*, i8** %143, align 8
  %145 = call i32 @kfree(i8* %144)
  br label %146

146:                                              ; preds = %141, %59
  %147 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %3, align 8
  %148 = getelementptr inbounds %struct.pohmelfs_sb, %struct.pohmelfs_sb* %147, i32 0, i32 0
  %149 = load i8*, i8** %148, align 8
  %150 = call i32 @kfree(i8* %149)
  br label %151

151:                                              ; preds = %146, %35, %15
  %152 = call i32 @mutex_unlock(i32* @pohmelfs_config_lock)
  %153 = load i32, i32* %5, align 4
  store i32 %153, i32* %2, align 4
  br label %154

154:                                              ; preds = %151, %134
  %155 = load i32, i32* %2, align 4
  ret i32 %155
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.pohmelfs_config_group* @pohmelfs_find_config_group(i32) #1

declare dso_local i8* @kstrdup(i64, i32) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
