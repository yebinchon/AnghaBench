; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/detail/extr_fs.c_atf_fs_eaccess.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/detail/extr_fs.c_atf_fs_eaccess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32, i64, i32 }

@atf_fs_access_f = common dso_local global i32 0, align 4
@atf_fs_access_r = common dso_local global i32 0, align 4
@atf_fs_access_w = common dso_local global i32 0, align 4
@atf_fs_access_x = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Cannot get information from file %s\00", align 1
@S_IXUSR = common dso_local global i32 0, align 4
@S_IXGRP = common dso_local global i32 0, align 4
@S_IXOTH = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@S_IRGRP = common dso_local global i32 0, align 4
@S_IWGRP = common dso_local global i32 0, align 4
@S_IROTH = common dso_local global i32 0, align 4
@S_IWOTH = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Access check failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atf_fs_eaccess(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.stat, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @atf_fs_access_f, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %27, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @atf_fs_access_r, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %27, label %17

17:                                               ; preds = %12
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @atf_fs_access_w, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @atf_fs_access_x, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br label %27

27:                                               ; preds = %22, %17, %12, %2
  %28 = phi i1 [ true, %17 ], [ true, %12 ], [ true, %2 ], [ %26, %22 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @PRE(i32 %29)
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @atf_fs_path_cstring(i32* %31)
  %33 = call i32 @lstat(i32 %32, %struct.stat* %6)
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %40

35:                                               ; preds = %27
  %36 = load i32, i32* @errno, align 4
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @atf_fs_path_cstring(i32* %37)
  %39 = call i32 (i32, i8*, ...) @atf_libc_error(i32 %36, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %38)
  store i32 %39, i32* %5, align 4
  br label %225

40:                                               ; preds = %27
  %41 = call i32 (...) @atf_no_error()
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @atf_fs_access_f, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %225

47:                                               ; preds = %40
  store i32 0, i32* %7, align 4
  %48 = call i64 (...) @atf_user_is_root()
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %74

50:                                               ; preds = %47
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @atf_fs_access_x, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %53
  store i32 1, i32* %7, align 4
  br label %59

59:                                               ; preds = %58, %53, %50
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %73, label %62

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @S_IXUSR, align 4
  %66 = load i32, i32* @S_IXGRP, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @S_IXOTH, align 4
  %69 = or i32 %67, %68
  %70 = and i32 %64, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %62
  store i32 1, i32* %7, align 4
  br label %73

73:                                               ; preds = %72, %62, %59
  br label %218

74:                                               ; preds = %47
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %120, label %77

77:                                               ; preds = %74
  %78 = call i64 (...) @atf_user_euid()
  %79 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %78, %80
  br i1 %81, label %82, label %120

82:                                               ; preds = %77
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* @atf_fs_access_r, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @S_IRUSR, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %117, label %93

93:                                               ; preds = %87, %82
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* @atf_fs_access_w, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @S_IWUSR, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %117, label %104

104:                                              ; preds = %98, %93
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* @atf_fs_access_x, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @S_IXUSR, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br label %115

115:                                              ; preds = %109, %104
  %116 = phi i1 [ false, %104 ], [ %114, %109 ]
  br label %117

117:                                              ; preds = %115, %98, %87
  %118 = phi i1 [ true, %98 ], [ true, %87 ], [ %116, %115 ]
  %119 = zext i1 %118 to i32
  store i32 %119, i32* %7, align 4
  br label %120

120:                                              ; preds = %117, %77, %74
  %121 = load i32, i32* %7, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %166, label %123

123:                                              ; preds = %120
  %124 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = call i64 @atf_user_is_member_of_group(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %166

128:                                              ; preds = %123
  %129 = load i32, i32* %4, align 4
  %130 = load i32, i32* @atf_fs_access_r, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %128
  %134 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @S_IRGRP, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %163, label %139

139:                                              ; preds = %133, %128
  %140 = load i32, i32* %4, align 4
  %141 = load i32, i32* @atf_fs_access_w, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %139
  %145 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @S_IWGRP, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %163, label %150

150:                                              ; preds = %144, %139
  %151 = load i32, i32* %4, align 4
  %152 = load i32, i32* @atf_fs_access_x, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %150
  %156 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @S_IXGRP, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br label %161

161:                                              ; preds = %155, %150
  %162 = phi i1 [ false, %150 ], [ %160, %155 ]
  br label %163

163:                                              ; preds = %161, %144, %133
  %164 = phi i1 [ true, %144 ], [ true, %133 ], [ %162, %161 ]
  %165 = zext i1 %164 to i32
  store i32 %165, i32* %7, align 4
  br label %166

166:                                              ; preds = %163, %123, %120
  %167 = load i32, i32* %7, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %217, label %169

169:                                              ; preds = %166
  %170 = call i64 (...) @atf_user_euid()
  %171 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %170, %172
  br i1 %173, label %174, label %217

174:                                              ; preds = %169
  %175 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = call i64 @atf_user_is_member_of_group(i32 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %217, label %179

179:                                              ; preds = %174
  %180 = load i32, i32* %4, align 4
  %181 = load i32, i32* @atf_fs_access_r, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %190

184:                                              ; preds = %179
  %185 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* @S_IROTH, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %214, label %190

190:                                              ; preds = %184, %179
  %191 = load i32, i32* %4, align 4
  %192 = load i32, i32* @atf_fs_access_w, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %201

195:                                              ; preds = %190
  %196 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* @S_IWOTH, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %214, label %201

201:                                              ; preds = %195, %190
  %202 = load i32, i32* %4, align 4
  %203 = load i32, i32* @atf_fs_access_x, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %212

206:                                              ; preds = %201
  %207 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* @S_IXOTH, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br label %212

212:                                              ; preds = %206, %201
  %213 = phi i1 [ false, %201 ], [ %211, %206 ]
  br label %214

214:                                              ; preds = %212, %195, %184
  %215 = phi i1 [ true, %195 ], [ true, %184 ], [ %213, %212 ]
  %216 = zext i1 %215 to i32
  store i32 %216, i32* %7, align 4
  br label %217

217:                                              ; preds = %214, %174, %169, %166
  br label %218

218:                                              ; preds = %217, %73
  %219 = load i32, i32* %7, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %224, label %221

221:                                              ; preds = %218
  %222 = load i32, i32* @EACCES, align 4
  %223 = call i32 (i32, i8*, ...) @atf_libc_error(i32 %222, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i32 %223, i32* %5, align 4
  br label %224

224:                                              ; preds = %221, %218
  br label %225

225:                                              ; preds = %224, %46, %35
  %226 = load i32, i32* %5, align 4
  ret i32 %226
}

declare dso_local i32 @PRE(i32) #1

declare dso_local i32 @lstat(i32, %struct.stat*) #1

declare dso_local i32 @atf_fs_path_cstring(i32*) #1

declare dso_local i32 @atf_libc_error(i32, i8*, ...) #1

declare dso_local i32 @atf_no_error(...) #1

declare dso_local i64 @atf_user_is_root(...) #1

declare dso_local i64 @atf_user_euid(...) #1

declare dso_local i64 @atf_user_is_member_of_group(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
