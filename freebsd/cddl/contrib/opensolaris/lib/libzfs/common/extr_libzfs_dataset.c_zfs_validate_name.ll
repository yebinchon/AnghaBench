; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_dataset.c_zfs_validate_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_dataset.c_zfs_validate_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"name is too long\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"leading slash in name\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"empty component in name\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"trailing slash in name\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"invalid character '%c' in name\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"multiple '@' and/or '#' delimiters in name\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"pool doesn't begin with a letter\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"name is reserved\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"reserved disk name\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"(%d) not defined\00", align 1
@ZFS_TYPE_SNAPSHOT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [44 x i8] c"snapshot delimiter '@' is not expected here\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"missing '@' delimiter in snapshot name\00", align 1
@ZFS_TYPE_BOOKMARK = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [44 x i8] c"bookmark delimiter '#' is not expected here\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"missing '#' delimiter in bookmark name\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"invalid character %c in name\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_validate_name(i32* %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call i64 @entity_namecheck(i8* %12, i32* %10, i8* %11)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %75

15:                                               ; preds = %4
  %16 = load i32*, i32** %6, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %74

18:                                               ; preds = %15
  %19 = load i32, i32* %10, align 4
  switch i32 %19, label %67 [
    i32 129, label %20
    i32 133, label %25
    i32 135, label %30
    i32 128, label %35
    i32 134, label %40
    i32 132, label %47
    i32 131, label %52
    i32 130, label %57
    i32 136, label %62
  ]

20:                                               ; preds = %18
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* @TEXT_DOMAIN, align 4
  %23 = call i32 @dgettext(i32 %22, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %24 = call i32 (i32*, i32, ...) @zfs_error_aux(i32* %21, i32 %23)
  br label %73

25:                                               ; preds = %18
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* @TEXT_DOMAIN, align 4
  %28 = call i32 @dgettext(i32 %27, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %29 = call i32 (i32*, i32, ...) @zfs_error_aux(i32* %26, i32 %28)
  br label %73

30:                                               ; preds = %18
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* @TEXT_DOMAIN, align 4
  %33 = call i32 @dgettext(i32 %32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %34 = call i32 (i32*, i32, ...) @zfs_error_aux(i32* %31, i32 %33)
  br label %73

35:                                               ; preds = %18
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* @TEXT_DOMAIN, align 4
  %38 = call i32 @dgettext(i32 %37, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %39 = call i32 (i32*, i32, ...) @zfs_error_aux(i32* %36, i32 %38)
  br label %73

40:                                               ; preds = %18
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* @TEXT_DOMAIN, align 4
  %43 = call i32 @dgettext(i32 %42, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %44 = load i8, i8* %11, align 1
  %45 = sext i8 %44 to i32
  %46 = call i32 (i32*, i32, ...) @zfs_error_aux(i32* %41, i32 %43, i32 %45)
  br label %73

47:                                               ; preds = %18
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* @TEXT_DOMAIN, align 4
  %50 = call i32 @dgettext(i32 %49, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  %51 = call i32 (i32*, i32, ...) @zfs_error_aux(i32* %48, i32 %50)
  br label %73

52:                                               ; preds = %18
  %53 = load i32*, i32** %6, align 8
  %54 = load i32, i32* @TEXT_DOMAIN, align 4
  %55 = call i32 @dgettext(i32 %54, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  %56 = call i32 (i32*, i32, ...) @zfs_error_aux(i32* %53, i32 %55)
  br label %73

57:                                               ; preds = %18
  %58 = load i32*, i32** %6, align 8
  %59 = load i32, i32* @TEXT_DOMAIN, align 4
  %60 = call i32 @dgettext(i32 %59, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %61 = call i32 (i32*, i32, ...) @zfs_error_aux(i32* %58, i32 %60)
  br label %73

62:                                               ; preds = %18
  %63 = load i32*, i32** %6, align 8
  %64 = load i32, i32* @TEXT_DOMAIN, align 4
  %65 = call i32 @dgettext(i32 %64, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  %66 = call i32 (i32*, i32, ...) @zfs_error_aux(i32* %63, i32 %65)
  br label %73

67:                                               ; preds = %18
  %68 = load i32*, i32** %6, align 8
  %69 = load i32, i32* @TEXT_DOMAIN, align 4
  %70 = call i32 @dgettext(i32 %69, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0))
  %71 = load i32, i32* %10, align 4
  %72 = call i32 (i32*, i32, ...) @zfs_error_aux(i32* %68, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %67, %62, %57, %52, %47, %40, %35, %30, %25, %20
  br label %74

74:                                               ; preds = %73, %15
  store i32 0, i32* %5, align 4
  br label %162

75:                                               ; preds = %4
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @ZFS_TYPE_SNAPSHOT, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %93, label %80

80:                                               ; preds = %75
  %81 = load i8*, i8** %7, align 8
  %82 = call i32* @strchr(i8* %81, i8 signext 64)
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %93

84:                                               ; preds = %80
  %85 = load i32*, i32** %6, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %92

87:                                               ; preds = %84
  %88 = load i32*, i32** %6, align 8
  %89 = load i32, i32* @TEXT_DOMAIN, align 4
  %90 = call i32 @dgettext(i32 %89, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0))
  %91 = call i32 (i32*, i32, ...) @zfs_error_aux(i32* %88, i32 %90)
  br label %92

92:                                               ; preds = %87, %84
  store i32 0, i32* %5, align 4
  br label %162

93:                                               ; preds = %80, %75
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* @ZFS_TYPE_SNAPSHOT, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %110

97:                                               ; preds = %93
  %98 = load i8*, i8** %7, align 8
  %99 = call i32* @strchr(i8* %98, i8 signext 64)
  %100 = icmp eq i32* %99, null
  br i1 %100, label %101, label %110

101:                                              ; preds = %97
  %102 = load i32*, i32** %6, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %109

104:                                              ; preds = %101
  %105 = load i32*, i32** %6, align 8
  %106 = load i32, i32* @TEXT_DOMAIN, align 4
  %107 = call i32 @dgettext(i32 %106, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i64 0, i64 0))
  %108 = call i32 (i32*, i32, ...) @zfs_error_aux(i32* %105, i32 %107)
  br label %109

109:                                              ; preds = %104, %101
  store i32 0, i32* %5, align 4
  br label %162

110:                                              ; preds = %97, %93
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* @ZFS_TYPE_BOOKMARK, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %128, label %115

115:                                              ; preds = %110
  %116 = load i8*, i8** %7, align 8
  %117 = call i32* @strchr(i8* %116, i8 signext 35)
  %118 = icmp ne i32* %117, null
  br i1 %118, label %119, label %128

119:                                              ; preds = %115
  %120 = load i32*, i32** %6, align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %122, label %127

122:                                              ; preds = %119
  %123 = load i32*, i32** %6, align 8
  %124 = load i32, i32* @TEXT_DOMAIN, align 4
  %125 = call i32 @dgettext(i32 %124, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12, i64 0, i64 0))
  %126 = call i32 (i32*, i32, ...) @zfs_error_aux(i32* %123, i32 %125)
  br label %127

127:                                              ; preds = %122, %119
  store i32 0, i32* %5, align 4
  br label %162

128:                                              ; preds = %115, %110
  %129 = load i32, i32* %8, align 4
  %130 = load i32, i32* @ZFS_TYPE_BOOKMARK, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %145

132:                                              ; preds = %128
  %133 = load i8*, i8** %7, align 8
  %134 = call i32* @strchr(i8* %133, i8 signext 35)
  %135 = icmp eq i32* %134, null
  br i1 %135, label %136, label %145

136:                                              ; preds = %132
  %137 = load i32*, i32** %6, align 8
  %138 = icmp ne i32* %137, null
  br i1 %138, label %139, label %144

139:                                              ; preds = %136
  %140 = load i32*, i32** %6, align 8
  %141 = load i32, i32* @TEXT_DOMAIN, align 4
  %142 = call i32 @dgettext(i32 %141, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i64 0, i64 0))
  %143 = call i32 (i32*, i32, ...) @zfs_error_aux(i32* %140, i32 %142)
  br label %144

144:                                              ; preds = %139, %136
  store i32 0, i32* %5, align 4
  br label %162

145:                                              ; preds = %132, %128
  %146 = load i64, i64* %9, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %161

148:                                              ; preds = %145
  %149 = load i8*, i8** %7, align 8
  %150 = call i32* @strchr(i8* %149, i8 signext 37)
  %151 = icmp ne i32* %150, null
  br i1 %151, label %152, label %161

152:                                              ; preds = %148
  %153 = load i32*, i32** %6, align 8
  %154 = icmp ne i32* %153, null
  br i1 %154, label %155, label %160

155:                                              ; preds = %152
  %156 = load i32*, i32** %6, align 8
  %157 = load i32, i32* @TEXT_DOMAIN, align 4
  %158 = call i32 @dgettext(i32 %157, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0))
  %159 = call i32 (i32*, i32, ...) @zfs_error_aux(i32* %156, i32 %158, i32 37)
  br label %160

160:                                              ; preds = %155, %152
  store i32 0, i32* %5, align 4
  br label %162

161:                                              ; preds = %148, %145
  store i32 -1, i32* %5, align 4
  br label %162

162:                                              ; preds = %161, %160, %144, %127, %109, %92, %74
  %163 = load i32, i32* %5, align 4
  ret i32 %163
}

declare dso_local i64 @entity_namecheck(i8*, i32*, i8*) #1

declare dso_local i32 @zfs_error_aux(i32*, i32, ...) #1

declare dso_local i32 @dgettext(i32, i8*) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
