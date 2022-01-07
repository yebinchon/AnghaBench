; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_super.c_ufs_parse_options.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_super.c_ufs_parse_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"ENTER\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@MAX_OPT_ARGS = common dso_local global i32 0, align 4
@tokens = common dso_local global i32 0, align 4
@UFSTYPE = common dso_local global i32 0, align 4
@UFSTYPE_OLD = common dso_local global i32 0, align 4
@UFSTYPE_SUNx86 = common dso_local global i32 0, align 4
@UFSTYPE_SUN = common dso_local global i32 0, align 4
@UFSTYPE_SUNOS = common dso_local global i32 0, align 4
@UFSTYPE_44BSD = common dso_local global i32 0, align 4
@UFSTYPE_UFS2 = common dso_local global i32 0, align 4
@UFSTYPE_HP = common dso_local global i32 0, align 4
@UFSTYPE_NEXTSTEP_CD = common dso_local global i32 0, align 4
@UFSTYPE_NEXTSTEP = common dso_local global i32 0, align 4
@UFSTYPE_OPENSTEP = common dso_local global i32 0, align 4
@ONERROR = common dso_local global i32 0, align 4
@ONERROR_PANIC = common dso_local global i32 0, align 4
@ONERROR_LOCK = common dso_local global i32 0, align 4
@ONERROR_UMOUNT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [62 x i8] c"UFS-fs: Unable to do repair on error, will lock lock instead\0A\00", align 1
@ONERROR_REPAIR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"UFS-fs: Invalid option: \22%s\22 or missing value\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @ufs_parse_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufs_parse_options(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = call i32 @UFSD(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %12 = load i8*, i8** %4, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %169

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %167, %164, %15
  %17 = call i8* @strsep(i8** %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %17, i8** %6, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %168

19:                                               ; preds = %16
  %20 = load i32, i32* @MAX_OPT_ARGS, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %7, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %8, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = load i8, i8* %24, align 1
  %26 = icmp ne i8 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %19
  store i32 2, i32* %10, align 4
  br label %164

28:                                               ; preds = %19
  %29 = load i8*, i8** %6, align 8
  %30 = load i32, i32* @tokens, align 4
  %31 = call i32 @match_token(i8* %29, i32 %30, i32* %23)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  switch i32 %32, label %160 [
    i32 133, label %33
    i32 129, label %42
    i32 131, label %51
    i32 130, label %60
    i32 137, label %69
    i32 128, label %78
    i32 136, label %87
    i32 134, label %96
    i32 135, label %105
    i32 132, label %114
    i32 140, label %123
    i32 141, label %132
    i32 138, label %141
    i32 139, label %150
  ]

33:                                               ; preds = %28
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @UFSTYPE, align 4
  %37 = call i32 @ufs_clear_opt(i32 %35, i32 %36)
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @UFSTYPE_OLD, align 4
  %41 = call i32 @ufs_set_opt(i32 %39, i32 %40)
  br label %163

42:                                               ; preds = %28
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @UFSTYPE, align 4
  %46 = call i32 @ufs_clear_opt(i32 %44, i32 %45)
  %47 = load i32*, i32** %5, align 8
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @UFSTYPE_SUNx86, align 4
  %50 = call i32 @ufs_set_opt(i32 %48, i32 %49)
  br label %163

51:                                               ; preds = %28
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @UFSTYPE, align 4
  %55 = call i32 @ufs_clear_opt(i32 %53, i32 %54)
  %56 = load i32*, i32** %5, align 8
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @UFSTYPE_SUN, align 4
  %59 = call i32 @ufs_set_opt(i32 %57, i32 %58)
  br label %163

60:                                               ; preds = %28
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @UFSTYPE, align 4
  %64 = call i32 @ufs_clear_opt(i32 %62, i32 %63)
  %65 = load i32*, i32** %5, align 8
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @UFSTYPE_SUNOS, align 4
  %68 = call i32 @ufs_set_opt(i32 %66, i32 %67)
  br label %163

69:                                               ; preds = %28
  %70 = load i32*, i32** %5, align 8
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @UFSTYPE, align 4
  %73 = call i32 @ufs_clear_opt(i32 %71, i32 %72)
  %74 = load i32*, i32** %5, align 8
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @UFSTYPE_44BSD, align 4
  %77 = call i32 @ufs_set_opt(i32 %75, i32 %76)
  br label %163

78:                                               ; preds = %28
  %79 = load i32*, i32** %5, align 8
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @UFSTYPE, align 4
  %82 = call i32 @ufs_clear_opt(i32 %80, i32 %81)
  %83 = load i32*, i32** %5, align 8
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @UFSTYPE_UFS2, align 4
  %86 = call i32 @ufs_set_opt(i32 %84, i32 %85)
  br label %163

87:                                               ; preds = %28
  %88 = load i32*, i32** %5, align 8
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @UFSTYPE, align 4
  %91 = call i32 @ufs_clear_opt(i32 %89, i32 %90)
  %92 = load i32*, i32** %5, align 8
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @UFSTYPE_HP, align 4
  %95 = call i32 @ufs_set_opt(i32 %93, i32 %94)
  br label %163

96:                                               ; preds = %28
  %97 = load i32*, i32** %5, align 8
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @UFSTYPE, align 4
  %100 = call i32 @ufs_clear_opt(i32 %98, i32 %99)
  %101 = load i32*, i32** %5, align 8
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @UFSTYPE_NEXTSTEP_CD, align 4
  %104 = call i32 @ufs_set_opt(i32 %102, i32 %103)
  br label %163

105:                                              ; preds = %28
  %106 = load i32*, i32** %5, align 8
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @UFSTYPE, align 4
  %109 = call i32 @ufs_clear_opt(i32 %107, i32 %108)
  %110 = load i32*, i32** %5, align 8
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @UFSTYPE_NEXTSTEP, align 4
  %113 = call i32 @ufs_set_opt(i32 %111, i32 %112)
  br label %163

114:                                              ; preds = %28
  %115 = load i32*, i32** %5, align 8
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @UFSTYPE, align 4
  %118 = call i32 @ufs_clear_opt(i32 %116, i32 %117)
  %119 = load i32*, i32** %5, align 8
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @UFSTYPE_OPENSTEP, align 4
  %122 = call i32 @ufs_set_opt(i32 %120, i32 %121)
  br label %163

123:                                              ; preds = %28
  %124 = load i32*, i32** %5, align 8
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @ONERROR, align 4
  %127 = call i32 @ufs_clear_opt(i32 %125, i32 %126)
  %128 = load i32*, i32** %5, align 8
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @ONERROR_PANIC, align 4
  %131 = call i32 @ufs_set_opt(i32 %129, i32 %130)
  br label %163

132:                                              ; preds = %28
  %133 = load i32*, i32** %5, align 8
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @ONERROR, align 4
  %136 = call i32 @ufs_clear_opt(i32 %134, i32 %135)
  %137 = load i32*, i32** %5, align 8
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @ONERROR_LOCK, align 4
  %140 = call i32 @ufs_set_opt(i32 %138, i32 %139)
  br label %163

141:                                              ; preds = %28
  %142 = load i32*, i32** %5, align 8
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @ONERROR, align 4
  %145 = call i32 @ufs_clear_opt(i32 %143, i32 %144)
  %146 = load i32*, i32** %5, align 8
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @ONERROR_UMOUNT, align 4
  %149 = call i32 @ufs_set_opt(i32 %147, i32 %148)
  br label %163

150:                                              ; preds = %28
  %151 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0))
  %152 = load i32*, i32** %5, align 8
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @ONERROR, align 4
  %155 = call i32 @ufs_clear_opt(i32 %153, i32 %154)
  %156 = load i32*, i32** %5, align 8
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @ONERROR_REPAIR, align 4
  %159 = call i32 @ufs_set_opt(i32 %157, i32 %158)
  br label %163

160:                                              ; preds = %28
  %161 = load i8*, i8** %6, align 8
  %162 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i8* %161)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %164

163:                                              ; preds = %150, %141, %132, %123, %114, %105, %96, %87, %78, %69, %60, %51, %42, %33
  store i32 0, i32* %10, align 4
  br label %164

164:                                              ; preds = %163, %160, %27
  %165 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %165)
  %166 = load i32, i32* %10, align 4
  switch i32 %166, label %171 [
    i32 0, label %167
    i32 2, label %16
    i32 1, label %169
  ]

167:                                              ; preds = %164
  br label %16

168:                                              ; preds = %16
  store i32 1, i32* %3, align 4
  br label %169

169:                                              ; preds = %168, %164, %14
  %170 = load i32, i32* %3, align 4
  ret i32 %170

171:                                              ; preds = %164
  unreachable
}

declare dso_local i32 @UFSD(i8*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @match_token(i8*, i32, i32*) #1

declare dso_local i32 @ufs_clear_opt(i32, i32) #1

declare dso_local i32 @ufs_set_opt(i32, i32) #1

declare dso_local i32 @printk(i8*, ...) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
